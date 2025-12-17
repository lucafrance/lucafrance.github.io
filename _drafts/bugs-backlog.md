---
title: Get the bugs you'll never fix out of your backlog 🐛
tags: [Project Management, Scrum]
---

Titolo: How to properly turn bugs into features

Though about this after seeing this LinkedIn post: https://www.linkedin.com/feed/update/urn:li:activity:7389645418118217728

It happens that bugs which are not intended to be fixed are kept in the backlog.
This can be the case if there is not important enough and there is no budget to fix them, to keep the reference.
Or if it was decided not to fix them, because the fix will add to much complexity.

Stuff in the Backlog is about generating value for a customer.
Deciding what not to do is functional the value to the customer, because it allows to focus on what generate value to the customer.
Completing a backlog item does not mean you must edit the codebase, it just mean you did a decision towards the customer value.
That decision can be to do nothing.

What you should do is have a specification separate from the backlog.
Back in 2000 Joel Spolsky recommended always writing a specification: https://www.joelonsoftware.com/2000/08/09/the-joel-test-12-steps-to-better-code/

> Writing specs is like flossing: everybody agrees that it’s a good thing, but nobody does it.

You write in the specification you write that the bug is now expected behaviour.
Write what was the reasoning not to fix it.
Then close the bug and remove it from the backlog with a comment pointing to the specification.

If priorities change in the future, you can decide to fix the bug.
If so, create a new product backlog item linked to the original bug and mention what changed.
When the new item is implemented, you update the specification accordingly.

## In Scrum

Your DoD can include a point: a bug is done if:
- a fix is implemented,
- OR a decision not to fix it is documented in the specification.

This highlights the importance of the product goal, to help decide whether fixing the bug is functional to the customer value or not.
