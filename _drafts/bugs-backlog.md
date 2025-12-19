---
title: How to properly turn bugs into features 🐛
tags: [Project Management, Scrum]
---

Bugs which won't be fixed shouldn't be kept in the backlog.

There are legitimate reasons to never fix a bug.
Maybe the bug impact is not worth the fix complexity.
Maybe there is not enough budget left.
Whatever the reason, sometimes the bug item is kept open as documentation that the issue is known and won't be fixed.
I disagree with this approach.

[Product backlogs](https://scrum.wiki/Product%20Backlog) are not meant to include all product information, just "what is needed to improve the product"[^scrum-guide-2020].
You don't always need to modify the product to improve it.
When you decide not to fix a bug, you generated an instrumental piece information: you are more valuable to the customer by working on anything else.
The bug item has fulfilled its purpose and no longer belongs to the backlog.

[^scrum-guide-2020]: [Scrum Guide, Product Backlog (2020)](https://scrumguides.org/scrum-guide.html#product-backlog)

> Fixing bugs is only important when the value of having the bug fixed exceeds the cost of the fixing it.
> *[Joel Spolsky - Hard-assed Bug Fixin’](https://www.joelonsoftware.com/2001/07/31/hard-assed-bug-fixin)*

You should add the bug behaviour to the product specification and link the corresponding backlog item.
The bug has turned into a feature and is now expected behaviour, add a comment with your reasoning and close the item.

The team might be reluctant to update the specification this way, as it could feel as admitting that the product is defective.
I disagree; the specification provides [transparency](https://scrum.wiki/Scrum%20theory#Scrum+pillars).
The customer and other stakeholders deserve to know what you expect from the product and why.
To ease the communication you can label the bug behaviour as "known limitation", but you should not hide it.

> Writing specs is like flossing: everybody agrees that it’s a good thing, but nobody does it.
> *[Joel Spolsky - The Joel Test: 12 Steps to Better Code](https://www.joelonsoftware.com/2000/08/09/the-joel-test-12-steps-to-better-code)*

Circumstances might change and you might decide to fix the bug in the future.
That can be because the priorities of the customer changed, or maybe the architecture was updated and is now an easy fix.
In such cases, open a new bug item, link the old one, and document decision.
You can than update the specification accordingly.
You should not keep an bug item open just because you hope to fix it someday, you will just clutter the backlog.

## Instructions

When you decide not to fix a bug:
- Comment in the bug ticket why it won't be fixed, e.g.:
- Document the bug as expected behaviour in the specification. Include a link to the ticket
- Close the the ticket.

If you change your mind and decide to fix the bug.
- Create a new bug ticket.
- Link the new ticket to the old ticket.
- Comment why the decision has changed.
- Update the specification according to the new expected behaviour.
- Continue with your standard bug fixing process.
