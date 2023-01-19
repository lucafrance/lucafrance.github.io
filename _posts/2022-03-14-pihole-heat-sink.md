---
title: The benefit of heat sinks on a Pi-Hole, checked experimentally
tags: [Statistics, Python, SciPy, Data]
---

I recently got myself a [Raspberry Pi 4](https://www.raspberrypi.org/products/raspberry-pi-4-model-b/) to use as a [Pi-hole](https://pi-hole.net/) and wanted to understand whether it would benefit from heat sinks or not.
Most answers online agree that [it is not needed](https://raspberrypi.stackexchange.com/a/44394), [but it doesn't hurt](https://www.reddit.com/r/pihole/comments/gvqgll/do_i_need_a_pi_house_with_fan/fsqjpju).
What I didn't find was some proper before-and-after comparison in real life conditions, so I checked myself.

## Experiment Setup

I run the Raspberry Pi in the [official case](https://www.raspberrypi.org/products/raspberry-pi-4-case/) and manage it headless over ssh.
I prepared a [script and a cron job](https://projects.raspberrypi.org/en/projects/temperature-log/4) to log the temperature every 10 minutes and save the result in a csv file. After running the Pi-hole naked for over a month, I applied [thermal tape](https://www.amazon.de/gp/product/B07MPBFNL2/ref=ppx_yo_dt_b_asin_title_o03_s00) and [heat sinks](https://www.amazon.de/gp/product/B078KB7V5J/ref=ppx_yo_dt_b_asin_title_o03_s00) to the main components.
I left it running for a similar amount of time and then checked the measurements.

> ![no_heatsink.jpg](/assets/2022/pihole-heat-sink/no_heatsink.jpg)
> Raspberry Pi without heat sinks

> ![with_heatsink.jpg](/assets/2022/pihole-heat-sink/with_heatsink.jpg)
> Raspberry Pi with heat sinks

## Results

I got a 11 880 measurements in total with timestamp and temperature.

```python
!pip install --upgrade --quiet numpy pandas scipy
```

```python
import numpy as np
import pandas as pd
from scipy.stats import mannwhitneyu
```

```python
df = pd.read_csv("cpu_temp.csv", names=["time", "temperature"], parse_dates=[0])
```

```python
df.sample(5)
```

<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>time</th>
      <th>temperature</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>6911</th>
      <td>2021-06-05 20:30:01</td>
      <td>58.426</td>
    </tr>
    <tr>
      <th>8925</th>
      <td>2021-06-19 20:10:01</td>
      <td>66.218</td>
    </tr>
    <tr>
      <th>4317</th>
      <td>2021-05-18 20:00:01</td>
      <td>61.835</td>
    </tr>
    <tr>
      <th>2480</th>
      <td>2021-05-06 01:50:01</td>
      <td>59.887</td>
    </tr>
    <tr>
      <th>5833</th>
      <td>2021-05-29 08:50:02</td>
      <td>56.478</td>
    </tr>
  </tbody>
</table>
</div>

When applying the heat sinks I noted the time to know where to split the logs.
There are 5 721 measurements without heat sink and 6 159 with it.

```python
first_heatsink_ts = pd.Timestamp("2021-05-28 14:10:02")
```

```python
no_heatsink_df = df[df["time"] < first_heatsink_ts]
with_heatsink_df = df[df["time"] >= first_heatsink_ts]
```

```python
no_heatsink_df.describe()
```

<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>temperature</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>count</th>
      <td>5721.000000</td>
    </tr>
    <tr>
      <th>mean</th>
      <td>60.055207</td>
    </tr>
    <tr>
      <th>std</th>
      <td>1.695518</td>
    </tr>
    <tr>
      <th>min</th>
      <td>53.556000</td>
    </tr>
    <tr>
      <th>25%</th>
      <td>58.913000</td>
    </tr>
    <tr>
      <th>50%</th>
      <td>59.887000</td>
    </tr>
    <tr>
      <th>75%</th>
      <td>60.861000</td>
    </tr>
    <tr>
      <th>max</th>
      <td>67.679000</td>
    </tr>
  </tbody>
</table>
</div>

```python
with_heatsink_df.describe()
```

<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>temperature</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>count</th>
      <td>6159.000000</td>
    </tr>
    <tr>
      <th>mean</th>
      <td>59.664731</td>
    </tr>
    <tr>
      <th>std</th>
      <td>2.435301</td>
    </tr>
    <tr>
      <th>min</th>
      <td>43.329000</td>
    </tr>
    <tr>
      <th>25%</th>
      <td>57.939000</td>
    </tr>
    <tr>
      <th>50%</th>
      <td>59.400000</td>
    </tr>
    <tr>
      <th>75%</th>
      <td>61.348000</td>
    </tr>
    <tr>
      <th>max</th>
      <td>67.679000</td>
    </tr>
  </tbody>
</table>
</div>

The average temperature is indeed lower with the heat sink (59.7° C vs 60.1° C).
As I have several thousands data points, I can check whether the difference is also statistically significant.
A proper statistical test in this case is the [Wilcoxon rank-sum test](https://mathworld.wolfram.com/WilcoxonRankSumTest.html) (aka Mann–Whitney U test, not to be confused with the [Wilcoxon signed-rank test]({% post_url 2020-12-01-wilcoxon-explained-well %})). 

The p-value turned out to be basically zero, so the null hypothesis is rejected and I feel confident that the difference is not by chance.

```python
res = mannwhitneyu(no_heatsink_df["temperature"], with_heatsink_df["temperature"], alternative="greater")
res.pvalue
```

```python
2.23439609754936e-53
```

## Conclusions

The temperature difference is _statistically_ significant but _practically_ insignificant.
For low loads as with the Pi-hole, the temperature stays around a reasonable 60° C.
Less than a Celsius degree difference is not worth the hassle of applying the heat sinks, but it might be for heavier loads.

### Caveats

While I am happy with the results, a more scientifically accurate experiment would use multiple machines running in similar conditions.
The weaknesses of my setup include:
- As I started the experiment in the spring and finished in the summer, the temperature could have been affected by the weather and heating at my apartment.
- The measurements with the heat sink were running afterwards and therefore with a more up-to-date and possibly more efficient software versions.
- I might have placed the thermal paste and the heat sinks poorly.
- There are different kinds of cases and thermal management solutions with possibly different results.

## Links

- [Mann–Whitney U test](https://en.wikipedia.org/wiki/Mann%E2%80%93Whitney_U_test) on Wikipedia.
- The [Scipy implementation](https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.mannwhitneyu.html) of the Mann–Whitney U test in Python.
