---
title: Microsoft's approach to dark mode is a mess
tags: []
mastodon: 
---

The inconsistent support for dark mode by Microsoft puzzles me. 

The web versions of Word, Excel, PowerPoint, OneNote don't support dark mode, while their desktop counterparty does.

![Screenshot of the web version of Word](/assets/2026/dark-mode-microsoft/word-web.png){: width="48%" }
![Screenshot of the web version of Excel](/assets/2026/dark-mode-microsoft/excel-web.png){: width="48%" }
<br>
![Screenshot of the web version of PowerPoint](/assets/2026/dark-mode-microsoft/powerpoint-web.png){: width="48%" }
![Screenshot of the web version of OneNote](/assets/2026/dark-mode-microsoft/onenote-web.png){: width="48%" }

Meanwhile, Outlook, Teams, and Copilot do support dark mode on the web.

![Screenshot of the web version of Outlook](/assets/2026/dark-mode-microsoft/outlook-web.png){: width="48%" }
![Screenshot of the web version of Teams](/assets/2026/dark-mode-microsoft/teams-web.png){: width="48%" }
![Screenshot of the web version of Copilot](/assets/2026/dark-mode-microsoft/copilot-web.png){: width="48%" }

Even normal web pages are inconsistent: dark mode is supported on [learn.microsoft.com](https://learn.microsoft.com), but not on [support.microsoft.com](https://support.microsoft.com).

![screenshot from support.microsoft.com](/assets/2026/dark-mode-microsoft/ms-support-page.png){: width="48%" }
![screenshot from learn.microsoft.com](/assets/2026/dark-mode-microsoft/ms-learn-page.png){: width="48%" }

Annoyingly, the [official documentation](https://support.microsoft.com/en-us/word/dark-mode-in-word) ([screenshot](/assets/2026/dark-mode-microsoft/word-dark-mode-docs-full-page.png)) mentions a dark mode feature for Word on the web which does not actually exit.

{:refdef: style="text-align: center;"}
![Word web docs mention dark mode in view menu](/assets/2026/dark-mode-microsoft/word-dark-mode-docs.png)
*Screenshot from Microsoft's documentation.*
{: refdef}

{:refdef: style="text-align: center;"}
![Word web actual view menu, no dark mode](/assets/2026/dark-mode-microsoft/word-web-view-menu.png)
*Actual view menu for Word on the web.*
{: refdef}

Except it does when you open a Word document from OneDrive, but not if you open Word first.
This workaround only works with Word and no other application.

<iframe width="560" height="315" src="https://www.youtube.com/embed/2nrti7aHerg?si=WMLBtkx6cR4JnOoY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

<br>
Why?
Microsoft is [definitely getting the feedback](/assets/2026/dark-mode-microsoft/feedback-dark-mode.png), even Copilot [hallucinates](/assets/2026/dark-mode-microsoft/copilot-web.png) dark mode features that don't exist.
I am genuinely curios [what kind of processes within Microsoft](https://bonkersworld.net/organizational-charts) lead to such different results.

{:refdef: style="text-align: center;"}
![This xkcd.com update introduces a variety of new reading modes which can be activated through the menu below the comic.](/assets/2026/dark-mode-microsoft/xkcd-dark-mode.png)
*Creation ([xkcd 3227](https://xkcd.com/3227/)), © Randall Munroe, [CC BY NC 2.5](https://creativecommons.org/licenses/by-nc/2.5/).*
{: refdef}
