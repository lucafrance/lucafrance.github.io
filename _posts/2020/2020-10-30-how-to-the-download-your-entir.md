---
title: How to download your entire GOG-library with LGOGDownloader
tags: []
---

Good Old Games allows to download single games over the [website](https://www.gog.com/account) or over the [client](https://www.gog.com/galaxy), but not the whole game library at once. Fortunately there is [LGOGDownloader](https://github.com/Sude-/lgogdownloader), an unofficial downloader for GOG on Linux.

It can also run on Windows through the Windows Subsystem for Linux (WSL). This guide has been tested with [Debian](https://www.microsoft.com/en-us/p/debian/9msvkqc78pk6), but it should also work on [Ubuntu](https://www.microsoft.com/en-us/p/ubuntu/9nblggh4msv6).

Install LGOGDownloader.


```
sudo apt-get update && sudo apt-get install lgogdownloader
```
Create a new folder in the desired directory.


```
$ mkdir gog-library
$ cd gog-library
/gog-library$
```
The following command will now download your entire library to the *gog-library* folder. You will be asked for credentials the first time. If enabled, two-factor authentication is also supported.


```
/gog-library$ lgogdownloader --repair --download --report --platform=all --language=en
```
Depending on your preferences, you might change or remove some of the options.


*  *--platform=all* downloads the game for all available platforms. You can replace *all* with *w* for Windows, *l* for Linux, or *m* for macOS.
*  *--language=en* downloads only installers in English.
*  *--report* creates a log file *lgogdownloader-report.log* in the current folder.
*  *--repair* checks existing downloads. It will download new versions of the game when available and add a suffix *.old* to the previous ones. It will also try incomplete downloads again. Keep this option if you want to regularly update your library.

The download might take several hours, as it can be hundreds of gigabytes in total.

![](/assets/2020/medium_images/1gZq_f-ckMgEArlg-iJo3rA.png)An example of the end result.

#### Links


* [LGOGDownloader website](https://sites.google.com/site/gogdownloader/)
* [LGOGDownloader on Github](https://github.com/Sude-/lgogdownloader)
* [Windows Subsystem for Linux Installation Guide for Windows 10](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

