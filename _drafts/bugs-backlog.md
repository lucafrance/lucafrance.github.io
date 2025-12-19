---
title: How to properly turn bugs into features 🐛
tags: [Project Management, Scrum]
---

Bugs that won't be fixed should not stay in the backlog.

There are good reasons not to fix a bug.
For example, the bug's impact might not be worth the effort of fixing it.
Or there might not be enough budget.
Whatever the reason, sometimes the bug is left to show that the issue is known but won't be addressed.
I disagree with this approach.

[Product backlogs](https://scrum.wiki/Product%20Backlog) are not meant to include all product information, only "what is needed to improve the product"[^scrum-guide-2020].
You don't always need to change the product to improve it.
When you decide not to fix a bug, you create useful information: working on other things is more valuable for the customer.
The bug item has done its job and no longer belongs in the backlog.

[^scrum-guide-2020]: [Scrum Guide, Product Backlog (2020)](https://scrumguides.org/scrum-guide.html#product-backlog)

> Fixing bugs is only important when the value of having the bug fixed exceeds the cost of the fixing it.
> *[Joel Spolsky - Hard-assed Bug Fixin’](https://www.joelonsoftware.com/2001/07/31/hard-assed-bug-fixin)*

{:refdef: style="text-align: center;"}
![Caterpillar of Pseudosphinx tetrio in Guadeloupe](/assets/2025/bug-feature/chenille-guadeloupe1.jpg){: width="70%" }<br>
*Caterpillar of Pseudosphinx tetrio in Guadeloupe, from [Wikimedia](https://commons.wikimedia.org/wiki/File:Chenille_Guadeloupe_3.JPG), [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/) by [KoS](https://commons.wikimedia.org/wiki/User:KoS)*
{: refdef}

You should add the bug behaviour to the product specification and link the corresponding backlog item.
The bug has turned into a feature and is now expected behaviour, add a comment with your reasoning and close the item.

The team might be reluctant to update the specification this way, as it could feel as admitting that the product is defective.
I disagree; the specification provides [transparency](https://scrum.wiki/Scrum%20theory#Scrum+pillars).
The customer and other stakeholders deserve to know what you expect from the product and why.
To ease the communication you can label the bug behaviour as "known limitation", but you should not hide it.

> Writing specs is like flossing: everybody agrees that it’s a good thing, but nobody does it.
> *[Joel Spolsky - The Joel Test: 12 Steps to Better Code](https://www.joelonsoftware.com/2000/08/09/the-joel-test-12-steps-to-better-code)*

{:refdef: style="text-align: center;"}
![Caterpillar of Pseudosphinx tetrio in Guadeloupe](/assets/2025/bug-feature/chenille-guadeloupe2.jpg){: width="70%" }<br>
*Caterpillar of Pseudosphinx tetrio in Guadeloupe, from [Wikimedia](chenille-guadeloupe1), [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/) by [KoS](https://commons.wikimedia.org/wiki/User:KoS)*
{: refdef}

Circumstances might change and you might decide to fix the bug in the future.
That can be because the priorities of the customer changed, or maybe the architecture was updated and is now an easy fix.
In such cases, open a new bug item, link the old one, and document decision.
You can than update the specification accordingly.
You should not keep an bug item open just because you hope to fix it someday, you will just clutter the backlog.

## Summary

When you decide not to fix a bug:
- Comment in the bug ticket why it won't be fixed.
- Document the bug as expected behaviour in the specification. Include a link to the ticket
- Close the the ticket.

If you change your mind and decide to fix the bug.
- Create a new bug ticket.
- Link the new ticket to the old ticket.
- Comment why the decision has changed.
- Update the specification according to the new expected behaviour.
- Continue with your standard bug fixing process.
