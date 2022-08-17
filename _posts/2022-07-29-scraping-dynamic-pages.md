---
title: How to scrape dynamic pages with Python and Selenium
tags: [Python, Data]
---

Getting the html source of a webpage is easy with Python.
With [`requests`](https://requests.readthedocs.io) it can be achieved in one line.

```python
import requests

url = "http://example.com/"
page_source = requests.get(url).text
```

This works well as long as the content of the page is static.
For some dynamic pages no useful information can be shown without running scripts.
The solution is to first execute the scripts and then scrape the result.

## Tools

First you will need to install a [WebDriver](https://developer.mozilla.org/en-US/docs/Web/WebDriver): basically an API to a Browser.
Each major Browser has [its own WebDriver](https://www.selenium.dev/documentation/webdriver/getting_started/install_drivers/#quick-reference), in this example I used [Firefox](https://xkcd.com/198/)'s one.
You can install the WebDriver manually, but then additional configuration and manual updates are necessary.
It is easier to use [Webdriver Manager](https://github.com/SergeyPirogov/webdriver_manager), which takes care of installing and keeping the WebDriver up to date.

You will need [Selenium](https://www.selenium.dev/) to talk to the WebDriver.
Selenium has [its own Python wrapper](https://pypi.org/project/selenium/), which is used in this example.

## Solution

Install the python libraries.
```python
python -m pip install selenium webdriver-manager
```

Use this code to execute the scripts and get the resulting html.
```python
from selenium import webdriver
from selenium.webdriver.firefox.service import Service as FirefoxService
from webdriver_manager.firefox import GeckoDriverManager

url = "http://example.com/"
driver = webdriver.Firefox(service=FirefoxService(GeckoDriverManager().install()))
driver.get(url)
page_source = driver.page_source
driver.quit()
```

## Parsing

The page source can than be parsed as the one of a static web page.
Python's standard library has its own parser [`html.parser`](https://docs.python.org/3/library/html.parser.html).
Another popular Python parser is [Beautiful Soup](https://www.crummy.com/software/BeautifulSoup/), for which I recommend [this tutorial on *pythonprogramming.net*](https://pythonprogramming.net/introduction-scraping-parsing-beautiful-soup-tutorial/).

## Links
- [Selenium WebDriver - Getting Started](https://www.selenium.dev/documentation/webdriver/getting_started/)
- [Mozilla's geckodriver](https://github.com/mozilla/geckodriver)
- [Webdriver Manager for Python](https://github.com/SergeyPirogov/webdriver_manager)
