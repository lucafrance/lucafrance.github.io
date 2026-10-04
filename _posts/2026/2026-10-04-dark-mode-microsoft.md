---
title: Microsoft's approach to dark mode is a mess
tags: [Microsoft Office]
mastodon: https://mastodon.social/@lucafeu/117381574163650714
---

The inconsistent support for dark mode across Microsoft products puzzles me.

The web versions of Word, Excel, PowerPoint, and OneNote don't support dark mode, while their desktop counterparts do.

{:refdef: style="text-align: center;"}
![Screenshot of the web version of Word](/assets/2026/dark-mode-microsoft/word-web.png){: width="60%" }
<br><br>
![Screenshot of the web version of Excel](/assets/2026/dark-mode-microsoft/excel-web.png){: width="60%" }
<br><br>
![Screenshot of the web version of PowerPoint](/assets/2026/dark-mode-microsoft/powerpoint-web.png){: width="60%" }
<br><br>
![Screenshot of the web version of OneNote](/assets/2026/dark-mode-microsoft/onenote-web.png){: width="60%" }
{: refdef}

Meanwhile, Outlook, Teams, and Copilot do support dark mode on the web.

{:refdef: style="text-align: center;"}
![Screenshot of the web version of Outlook](/assets/2026/dark-mode-microsoft/outlook-web.png){: width="60%" }
<br><br>
![Screenshot of the web version of Teams](/assets/2026/dark-mode-microsoft/teams-web.png){: width="60%" }
<br><br>
![Screenshot of the web version of Copilot](/assets/2026/dark-mode-microsoft/copilot-web.png){: width="60%" }
{: refdef}

Even ordinary web pages are inconsistent: dark mode is supported on [learn.microsoft.com](https://learn.microsoft.com), but not on [support.microsoft.com](https://support.microsoft.com).

{:refdef: style="text-align: center;"}
![screenshot from support.microsoft.com](/assets/2026/dark-mode-microsoft/ms-support-page.png){: width="60%" }
<br><br>
![screenshot from learn.microsoft.com](/assets/2026/dark-mode-microsoft/ms-learn-page.png){: width="60%" }
{: refdef}

Annoyingly, the [official documentation](https://support.microsoft.com/en-us/word/dark-mode-in-word) ([screenshot](/assets/2026/dark-mode-microsoft/word-dark-mode-docs-full-page.png)) mentions a dark mode feature for Word on the web that does not actually exist.

{:refdef: style="text-align: center;"}
![Word web docs mention dark mode in view menu](/assets/2026/dark-mode-microsoft/word-dark-mode-docs.png)
*Screenshot from Microsoft's documentation.*
{: refdef}

{:refdef: style="text-align: center;"}
![Word web actual view menu, no dark mode](/assets/2026/dark-mode-microsoft/word-web-view-menu.png)
*Actual view menu for Word on the web.*
{: refdef}

Except it does when you open a Word document from OneDrive, but not if you open Word first.
This workaround only works in Word and no other application.

<iframe
  src="https://www.youtube.com/embed/2nrti7aHerg?si=WMLBtkx6cR4JnOoY"
  title="YouTube video player"
  style="width: 100%; height: auto; aspect-ratio: 16 / 9;"
  frameborder="0"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
  referrerpolicy="strict-origin-when-cross-origin"
  allowfullscreen>
</iframe>

<br>
Why?
Microsoft is [definitely getting the request](/assets/2026/dark-mode-microsoft/feedback-dark-mode.png); even Copilot [hallucinates dark mode features that don't exist](/assets/2026/dark-mode-microsoft/copilot-hallucination.png).
I am genuinely curious [what kind of processes within Microsoft](https://bonkersworld.net/organizational-charts) lead to such different results.

{:refdef: style="text-align: center;"}
![This xkcd.com update introduces a variety of new reading modes which can be activated through the menu below the comic.](/assets/2026/dark-mode-microsoft/xkcd-dark-mode.png)
*Creation ([xkcd 3227](https://xkcd.com/3227/)), © Randall Munroe, [CC BY NC 2.5](https://creativecommons.org/licenses/by-nc/2.5/).*
{: refdef}
