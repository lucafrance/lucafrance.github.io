---
title: "Comments on 'Basics of Personal Information Management: Finding the best tool(s)' by Karl Voit"
tags: []
mastodon: 
---

TL;DR: If you want to organise your digital files better and don't know where to start, watch [this talk](https://media.ccc.de/v/basics-of-personal-information-management-finding-the-best-tool-s).

I appreciate people obsessing even more than I do about personal organisation, like [Karl Voit](https://karl-voit.at/).
He recently gave [a talk](https://media.ccc.de/v/basics-of-personal-information-management-finding-the-best-tool-s) at [Håck ma’s](https://hack-mas.at/) about [personal information management (PIM)](https://karl-voit.at/Basics-of-PIM-Talk/).

<div style="display: flex; justify-content: center;">
  <div style="width: 75%; max-width: 960px; aspect-ratio: 16 / 9;">
    <iframe
      src="https://media.ccc.de/v/basics-of-personal-information-management-finding-the-best-tool-s/oembed"
      style="display: block; width: 100%; height: 100%; border: 0;"
      allowfullscreen>
    </iframe>
  </div>
</div>
<br>

I share many of his thoughts and have comments on some of them.
Here they are in subjective order of importance.

## Choose the tool in function of the method, not vice versa (43:15)

Yes, yes, yes, `"yes " * 100`.

This single idea could be a talk in itself.
A source of frustration in my work is people blindly adapting their workflow in function of the tool without ever questioning their method.
This is a pattern that I keep observing:
1. A tool is introduced at some point in the organisation, often ignoring the requirements of the users.
1. The processes are adapted to the limitations of the tool.
1. Unused features of the tool are integrated in the processes because they are the default. The existence of the tool legitimises changes to the process.

This issue was my inspiration for writing about the [required metrics in Scrum]({% post_url 2025/2025-02-22-scrum-metrics %}).
Organisation keep claiming to choose Scrum, when they actually implicitly choose [the default template in Jira](https://www.atlassian.com/software/jira/templates/scrum).

If you care about efficiency, you need to put serious thought in what your requirements are, then which method best fits your requirement, then which tools best fit your methods.

## Treat future you as a stranger (2:40)

Your brain evolves over time and your identity with it.
For practical purposes future you is a different person.
If you set up a complex system to organise your life, expect future you to learn it again from scratch.
When developing a system for yourself you should apply the same level of care as if you were doing it for another person.

## Use ISO-8601 in your file names (33:40)

Karl does not mention [ISO 8601](https://www.iso.org/iso-8601-date-and-time-format.html) in the talk, but he mentions it [on his blog](https://karl-voit.at/managing-digital-photographs/).
If the time your file was created is relevant in any way, add the date in the format YYYY-MM-DD to the file name.

 > As with all meta-data within file names, time/date-stamps in file names have the advantage that they remain unchanged until I manually change them. Meta-data which is included in the file content itself (like Exif) tends to get lost when files are processed via tools that do not take care of those meta-data. Additionally, starting a file name with such a date/time-stamp ensures that files are displayed in file managers in temporal order instead of alphabetic order according to their descriptions. The alphabet is a totally artificial sort order and it is typically less practical for locating files by the user when compared to temporal order which seems to support the way that the human brain associates events. 

## If you use multiple hierarchies, keep them similar (24:03)

This is a corollary of prioritising the method over the tool.
Once you choose the method, all tool should be adapted similarly.
This is [one of the instructions](https://github.com/lucafrance/luca-decimal/tree/d36611729a94870fe408ca77347c8b83ec0712c9#consistency-among-different-apps) I defined for luca-decimal.

If you are not ready to commit to using the same method across all tools, then they do not fit your needs properly.
You should reconsider your method and your tools.


