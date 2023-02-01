---
title: The math behind the Wilcoxon signed-rank test explained well
tags: [Statistics, Data]
---
The Wilcoxon signed-ranked test is useful when dealing with pairs of observations $$(x_1, y_1), \dots, (x_N, y_N)$$ from a pair of random variables $$(X, Y)$$ which we want to prove not to be equal. These can be for example:
* different procedures to measure the same phenomenon,
* temperatures measured at the same time in different places,
* outcomes of different treatments on the same patients.

Since we want to prove the random variables $$X$$ and $$Y$$ to be different, the null-hypothesis will be that they are actually equal.

H0: $$X = Y$$ within random error.

This is equivalent to saying that the difference of the random variables has mean zero.

H0: $$\mathbf{E}[X-Y] = 0$$

### What the test is and what it isn't

The Wilcoxon signed-ranked test is *non-parametric*, since there is no assumption about the distribution of $$X$$ and $$Y$$. There is also no assumption about the distribution of their difference $$X-Y$$. The only assumption is that the mean of the their difference is zero.

The test is also a *paired test*, since it only applies on pairs of observation. The correct test for *unpaired* observations would be the [*Wilcoxon rank-sum test*](https://en.wikipedia.org/wiki/Mann%E2%80%93Whitney_U_test), which is similarly named yet different.

### Computing the test statistic

First define the differences among the observations:

$$d_i = x_i - y_i \quad \text{for} \ i=1, ..., N$$

Discard the differences equal to zero, as they won't matter when calculating the test statistic. Then rank the *absolute values* (i.e. ignoring the sign) of $$d_i$$ from $$1$$ (smallest) to $$N$$ (biggest).

$$r_i = \ \text{rank of} \ |d_i| \ \text{among} \ |d_1|, \dots, |d_N|$$

Sum the ranks for all positive and negative differences separately. These will be called respectively $$W+$$ and $$W-$$.

$$W+ = Σ{r_i : d_i > 0}$$

$$W- = Σ{r_i : d_i < 0}$$

Take the smallest value between $$W+$$ and $$W-$$, this will now be the test statistic $$W$$. Wilcoxon originally defined the test-statistic this way, other sources define it differently.

$$W = \min\{W+, W-\}$$

### Computing the p-value

The ranks will include all numbers from $$1$$ to $$N$$. Each rank $$r_i$$ will correspond to either a negative or positive difference  $$d_i$$ and will be summed accordingly depending in either $$W+$$ and $$W-$$. For each sample size $$N$$, there are exactly $$2^N$$ possible ways to arrange the ranks with consequently different values of $$W+$$ and $$W-$$.

E.g. for $$N = 6$$ there are $$32$$ different ways to arrange the ranks. Notice how each value of $$W+$$ also determines the value for $$W-$$, as the sum of all the ranks will always be $$1 + \dots + N$$.

| $$W+$$ | $$W-$$ | ranks of positive differences | ranks of negative differences |
| --- | --- | --- | --- |
| 15 | 0 | 1, 2, 3, 4, 5 | - |
| 14 | 1 | 2, 3, 4, 5 | 1 |
| 13 | 2 | 1, 3, 4, 5 | 2 |
| 12 | 3 | 1, 2, 4, 5 | 3 |
| 12 | 3 | 3, 4, 5 | 1, 2 |
| 11 | 4 | 1, 2, 3, 5 | 4 |
| 11 | 4 | 2, 4, 5 | 1, 3 |
| 10 | 5 | 1, 2, 3, 4 | 5 |
| 10 | 5 | 2, 3, 5 | 1, 4 |
| 10 | 5 | 1, 4, 5 | 2, 3 |
| 9 | 6 | 2, 3, 4 | 1, 5 |
| 9 | 6 | 1, 3, 5 | 2, 4 |
| 9 | 6 | 4, 5 | 1, 2, 3 |
| 8 | 7 | 1, 3, 4 | 2, 5 |
| 8 | 7 | 1, 2, 5 | 3, 4 |
| 8 | 7 | 3, 5 | 1, 2, 4 |
| 7 | 8 | 2, 5 | 1, 3, 4 |
| 7 | 8 | 3, 4 | 1, 2, 5 |
| 7 | 8 | 1, 2, 4 | 3, 5 |
| 6 | 9 | 1, 5 | 2, 3, 4 |
| 6 | 9 | 2, 4 | 1, 3, 5 |
| 6 | 9 | 1, 2, 3 | 4, 5 |
| 5 | 10 | 5 | 1, 2, 3, 4 |
| 5 | 10 | 1, 4 | 2, 3, 5 |
| 5 | 10 | 2, 3 | 1, 4, 5 |
| 4 | 11 | 4 | 1, 2, 3, 5 |
| 4 | 11 | 1, 3 | 2, 4, 5 |
| 3 | 12 | 3 | 1, 2, 4, 5 |
| 3 | 12 | 1, 2 | 3, 4, 5 |
| 13 | 2 | 2 | 1, 3, 4, 5 |
| 14 | 1 | 1 | 2, 3, 4, 5 |
| 15 | 0 | - | 1, 2, 3, 4, 5 |

One consequence of the null hypothesis is that for each rank $$r_i$$ there is an equal probability for the corresponding difference $$d_i$$ to be positive or negative (it follows from $$\mathbf{E}[X-Y] = 0$$). Therefore, we will expect similar values for $$W+$$ and $$W-$$ to be more likely. In the example above for $$N = 5$$ we expect $$6 <= W+, W- <= 9$$ to be more likely than the other values.

There is also a symmetry $$\mathbf{P}(W+ = w) = \mathbf{P}(W- = w)$$ for each $$w$$. This is the reason for defining the statistic $$W$$ as the minimum among $$W+$$ and $$W-$$, as it can be used for a two-tailed test.

For $$W=w$$, the $$p$$-value is therefore defined as:

$$p = \mathbf{P}(W <= w)$$

which is equivalent to:

$$p = 2 \times \frac{(\text{number of partitions of} \ (1,\dots,N) \ \text{such that the sum is less or equal to} \ w)}{(\text{number of all possible partitions of} \ (1,...,N))}$$

In the example with $$N=5$$, suppose $$W=2$$ for our observations. There are only $$2 × 3 = 6$$ rank arrangements which can return that value or less.

| $$W$$ | $$W+$$ | $$W-$$ | ranks of positive differences | ranks of negative differences |
| --- | --- | --- | --- | --- |
| 0 | 15 | 0 | 1, 2, 3, 4, 5 | - |
| 1 | 14 | 1 | 2, 3, 4, 5 | 1 |
| 2 | 13 | 2 | 1, 3, 4, 5 | 2 |
| 2 | 13 | 2 | 2 | 1, 3, 4, 5 |
| 1 | 14 | 1 | 1 | 2, 3, 4, 5 |
| 0 | 15 | 0 | - | 1, 2, 3, 4, 5 |

Since there are $$32$$ possible arrangements, the $$p$$-value for the statistic $$W=2$$ is $$p = 6/32 = 0.1875$$.

In general the $$p$$ value will always depend on the sample size $$N$$ and the statistic $$W$$.

For small sample sizes $$N$$ the $$p$$-value can be computed by hand. For large values it is not practical to compute all the possible combinations even with a machine, since the number of possibilities grows exponentially ($$2^N$$). From a certain point $$p$$ can be approximated with a continuous distribution, for example [Scipy](https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.wilcoxon.html) computes $$p$$ with the exact distribution for $$N <= 25$$ and approximates it for $$N>25$$.

Another limitation of the original signed-rank test is that when the difference is zero the observation is ignored, but there are improvements to the test which can consider these too. If some of your differences are zero, you should verify whether your statistical tool of choice recognizes these or not.

### Tools
The Wilcoxon signed-rank task can be computed with several tools:
* Online: [Social Science Statistic](https://www.socscistatistics.com/tests/signedranks/default.aspx)
* R: [`wilcox.test` with the argument `paired = TRUE`](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/wilcox.test)
* Python: [SciPy function `scipy.stats.wilcoxon`](https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.wilcoxon.html)

### Sources

* [Individual Comparisons by Ranking Methods](https://sci2s.ugr.es/keel/pdf/algorithm/articulo/wilcoxon1945.pdf) by Frank Wilcoxon (1945)
* [Wikipedia: Wilcoxon signed-rank test](https://en.wikipedia.org/wiki/Wilcoxon_signed-rank_test)
* [The Python functions in SciPy that compute the exact distribution for small sample sizes](https://github.com/scipy/scipy/blob/827452cc5a30f8bfc64b991d675119726b76070e/scipy/stats/_wilcoxon_data.py)
