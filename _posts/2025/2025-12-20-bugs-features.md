---
title: How to properly turn bugs into features 🐛
tags: [Project Management, Scrum]
mastodon: https://mastodon.social/@lucafeu/115989146367964655
---

Bugs that won't be fixed should not stay in the backlog.

There are valid reasons not to fix a bug.
For example, the bug's impact might not be worth the effort of fixing it, or there might not be enough budget.
Whatever the reason, sometimes the corresponding backlog item is left open to show that the issue is known but won't be addressed.
I disagree with this approach.

> Fixing bugs is only important when the value of having the bug fixed exceeds the cost of the fixing it.<br>
> *[Joel Spolsky - Hard-assed Bug Fixin’](https://www.joelonsoftware.com/2001/07/31/hard-assed-bug-fixin)*

[Product backlogs](https://scrum.wiki/Product%20Backlog) are not meant to include all product information, only "what is needed to improve the product"[^scrum-guide-2020].
You don't always need to change the product to improve it.
When you decide not to fix a bug, you create useful information: working on other things is more valuable for the customer.
The bug item has fulfilled its purpose and no longer belongs in the backlog.

[^scrum-guide-2020]: [Scrum Guide, Product Backlog (2020)](https://scrumguides.org/scrum-guide.html#product-backlog)

{:refdef: style="text-align: center;"}
![Caterpillar of Pseudosphinx tetrio in Guadeloupe](/assets/2025/bug-feature/chenille-guadeloupe1.jpg){: width="70%" }<br>
*Caterpillar of Pseudosphinx tetrio in Guadeloupe, from [Wikimedia](https://commons.wikimedia.org/wiki/File:Chenille_Guadeloupe_3.JPG), [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/) by [KoS](https://commons.wikimedia.org/wiki/User:KoS)*
{: refdef}

You should add the bug's behaviour to the product specification and link it to the relevant backlog item.
The bug has become a feature and is now expected behaviour; add a comment explaining your reasoning and close the item.

> Writing specs is like flossing: everybody agrees that it’s a good thing, but nobody does it.<br>
> *[Joel Spolsky - The Joel Test: 12 Steps to Better Code](https://www.joelonsoftware.com/2000/08/09/the-joel-test-12-steps-to-better-code)*

The team might hesitate to update the specification like this, as it could seem like admitting the product has defects.
I disagree; the specification ensures [transparency](https://scrum.wiki/Scrum%20theory#Scrum+pillars).
Customers and other [stakeholders](https://scrum.wiki/stakeholders) have the right to know what you expect from the product and why.
To ease communication, you can call the bug behaviour a "known limitation", but you should not hide it.

{:refdef: style="text-align: center;"}
![Caterpillar of Pseudosphinx tetrio in Guadeloupe](/assets/2025/bug-feature/chenille-guadeloupe2.jpg){: width="70%" }<br>
*Caterpillar of Pseudosphinx tetrio in Guadeloupe, from [Wikimedia](https://commons.wikimedia.org/wiki/File:Chenille_Guadeloupe.JPG), [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/) by [KoS](https://commons.wikimedia.org/wiki/User:KoS)*
{: refdef}

Situations can change, and you might choose to fix the bug later.
This could happen if the customer's priorities shift, or if the system design is updated, making the fix simple.
In these cases, create a new backlog item, link it to the old one, and explain the decision.
Then, update the specification as needed.
Don't leave a item open just because you hope to fix it someday; it will only be clutter.

## Summary

When you decide not to fix a bug:
- Add a comment in the backlog item explaining why it won't be fixed.
- Record the bug as expected behaviour in the specification and include a link to the item.
- Close the item.

If you later decide to fix the bug:
- Create a new backlog item.
- Link the new item to the old one.
- Add a comment explaining why the decision changed.
- Update the specification to match the new expected behaviour.
- Follow your usual process for fixing bugs.
