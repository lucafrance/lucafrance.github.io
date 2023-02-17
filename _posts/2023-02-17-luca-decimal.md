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

## The different philosophy of PARA

I was able to identify my concerns after reading [*Building a Second Brain*](https://www.buildingasecondbrain.com/book) by Tiago Forte.
Forte describes a system designed for not-taking, but it can also be used for organizing files.
The system is called PARA and a quote from the book clearly summarizes its design difference from Jonny Decimal:

> PARA isn’t a filing system; it’s a production system .

PARA stands for Projects, Areas, Resources, Archive.
I like PARA because of its focus on distributing items based on their associated actions.

> - Projects : Short - term efforts in your work or life that you’re working on now . 
> - Areas : Long - term responsibilities you want to manage over time . 
> - Resources : Topics or interests that may be useful in the future . 
> - Archives : Inactive items from the other three categories .

Source: *[Forte Labs blog](https://fortelabs.com/blog/p-a-r-a-ii-operations-manual/)*


1. It reduced the mental burden for adding anything new.
I just need to determine if a new thing belongs to *projects*, *areas*, or *resources*, add a folder, and get started.
If necessary, it can always be tidied up later.

1. Any completed activity can be thrown in *Archive* without bothering about it.
If anything is necessary in the future, it can be easily found with the built-in search.

Johnny decimal starts with a different design decision of providing a stable structure for a group of people, which doesn't fit my workflow as good as PARA.

## Merging PARA with Johnny Decimal

Theoretically You could fit PARA within Johnny Decimal, but it would be very restrictive.
Four categories can become quickly become tight, if everything mus be fitted in the just maximal four categories.
Also, the archive folder would become unnecessarily cumbersome to manage, having to rethink the numbering every time something is archived.

```
- 10-19 Projects
    - 10 Lorem ipsum
        - 10.01 Dolor sit amet
        - 10.02 Consectetaur adipisicing
    - 11 Sed do eiusmod tempor
    - 12 Incididunt ut labore et dolor
    - 13 E magna aliqua
    - ...
- 20-29 Areas
    - 21 Ut enim ad minim veniam
    - 22 Quis nostrud exercitation
    - ...
- 30-39 Resources
    - 31 Ullamco laboris nisi ut aliquip
    - 32 Ex ea commodo consequat
    - ...
- 40-49 Archive 
    - 41 Duis aute irure dolor
    - 42 In reprehenderit in voluptate
    - ...
```

## Conclusion

I wrote a spec, it's on GitHub (link).

## Link
- spec on GitHub
- Johnny Decimal website
- [The P.A.R.A. Method blog serie](https://fortelabs.com/blog/series/para)
- [Building a Second Brain book](https://www.buildingasecondbrain.com/book)
