---
title: Luca-Decimal (DRAFT)
tags: []
---

TL, DR: If Johnny Decimal didn't work for you, try [my approach](link to spec on GitHub).

*Note: this is not an introduction to Johnny Decimal or PARA, it is a personal experience on how i applied the systems.*

I struggled for a long time with a structure of my digital files.
I regularly moved stuff around and was never able to keep it consistent.
I while back I discovered [Johnny Decimal](https://johnnydecimal.com/) by Johnny Noble.
It is inspired from the [Dewey decimal classification](https://www.britannica.com/science/Dewey-Decimal-Classification) for libraries and applies a similar logic to folder structure.

```
- 10-10 Finance
    - 11 Tax returns
    - 12 Payroll
        - 12.01 Staff bank details for payments
        - 12.02 Payroll calculation spreadsheet
        - 12.03 Payroll schedule for 2018
    - 13 Bookkeping
-20-29 Administration
    - 21 Company registration
    - 22 Contracts
    - 23 Staffing
- 30-39 Marketing
    - 31 Assets
    - 32 Campaigns
    - 33 Publicity
    - 34 Events
- 40-49 Sales
    - 41 Sales figures
    - 42 Proposal
```
*Example from [johnnydecimal.com](https://johnnydecimal.com/)*

## What i like and don't like about Johnny Decimal

In Johnny decimal I like most the decision to use at most two levels of subfolders:
- 10 *areas*,
- 10 *categories* per *area*,
- up to 100 *unique things* per *category*.

Such restriction prevents rabbit holes of folders difficult to navigate.
The 10 > 10 > 100 structure is flexible, while forcing to think about the organization and matching it.

I like that the numbering of the folders gives an indication of the position within the general structure: `xy` is the first level, `xy.ab` is the second level.

I didn't try Johnny Decimal in teams yet, but I believe it is great for teams working on processes that change little over time.
What Johnny Decimal didn't fit any more is for an individual like me that enjoys embracing anarchy once in a while.
The Johnny Decimal structure I defined improved my previous anarchic system, but started struggling soon for three reasons.

1. I regularly start new projects, which might often be experiments going nowhere but I want to do them anyway.
Having to fit these projects in a structure which didn't conceive their existence was adding unnecessary mental burden.

1. There is not an obvious way to archive older files.
If I have a project in `10.01 Project A`, then it will stay there on top of my list even when the project is over.
There are workarounds, but they involve braking up the decimal structure, which must be kept consistent manually among all apps.

1. In defining a Johnny Decimal structure there is an implicit choice about how prominent each thing should be.
I realized afterwards that some of the choices didn't necessarily match how I wanted to use the folders in practice.
There is the possibility of re-defining the indexes, but this is a complex process for how Johnny Decimal is defined.
It is kinda like the difference of re-indexing a database with a data structure which costs *O(n)*, while I want one that costs *O(1)*.

## Merging PARA with Johnny Decimal

I learned about PARA

like focus on action

> PARA isn’t a filing system ; it’s a production system .


Combined best of both for me

## Conclusion

I wrote a spec, it's on GitHub (link).

## Link
- spec on GitHub
- Johnny Decimal website
- Second Brain website
- PARA series blog
