---
title: How I mixed <i>Johnny Decimal</i> and <i>Second Brain</i> to organize my documents 
tags: []
---

TL, DR: If Johnny Decimal didn't work for you, try [my approach](https://github.com/lucafrance/luca-decimal).

I struggled for a long time with the disorganization of my documents.
Finding and moving around files was interrupting my workflow too often.
After discovering [Johnny Decimal](https://johnnydecimal.com/) there were some improvements, but I wasn't satisfied yet.
While reading [Second Brain](https://www.buildingasecondbrain.com/) by Tiago Forte something clicked in my (first) brain and I was finally able to design a system that works for me.
Here is my thought process. 

![](/assets/2023/luca-decimal/library.jpg)
*Picture by [Gabriel Sollmann](https://unsplash.com/@ccgabon?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/it/foto/Y7d265_7i08?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)*

## What I like and don't like about Johnny Decimal

Johnny Decimal, by Johnny Noble, is inspired by the [Dewey decimal classification](https://www.britannica.com/science/Dewey-Decimal-Classification) for libraries and applies a similar logic to folder structures.

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

The best decision in Johnny Decimal is to use at most two levels of subfolders:
- 10 *areas*,
- 10 *categories* per *area*,
- up to 100 *unique things* per *category*.

The 10 > 10 > 100 structure is flexible, while restrictive enough to prevent rabbit holders of folders too difficult to navigate.

Johnny Decimal improved my previous anarchic system, but struggled soon for three reasons:

1. I regularly start new projects, which are often experiments going nowhere.
Having to fit these projects in a structure which didn't conceive their existence was adding unnecessary mental burden.

1. There is not an obvious way to archive older files.
If I have a project in `10.01 Project A`, then it will stay there on top of my list once done.
There are [workarounds](https://johnnydecimal.com/concepts/exceptions-to-the-rules/), but they involve too much manual reorganization.

1. In defining a Johnny Decimal structure there is an implicit choice about how prominent each thing should be.
As my priorities change, the structure no longer fits and must be almost completely rethought.

I believe Johnny decimal shines most with teams working on processes with stable structures.
For individuals probably other solutions are better most of the time.

![](/assets/2023/luca-decimal/team.jpg)
*Picture by [Marvin Meyer](https://unsplash.com/@marvelous?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/it/foto/SYTO3xs06fU?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)*

## The different philosophy of PARA

I was able to identify my concerns after reading [*Building a Second Brain*](https://www.buildingasecondbrain.com/book) by Tiago Forte.
Forte describes PARA (Projects, Areas, Resources, Archive), a system designed for note-taking, but which can also be used for organizing files.
I like PARA because of its focus on distributing items based on their associated actions.

> - Projects : Short - term efforts in your work or life that you’re working on now . 
> - Areas : Long - term responsibilities you want to manage over time . 
> - Resources : Topics or interests that may be useful in the future . 
> - Archives : Inactive items from the other three categories .

Source: *[Forte Labs blog](https://fortelabs.com/blog/p-a-r-a-ii-operations-manual/)*

A quote from the book clearly summarizes PARA's design difference from Jonny Decimal:
> PARA isn’t a filing system; it’s a production system .

PARA immediately fixed my issues with Johnny Decimal.

1. The mental burden for adding anything new is mostly gone.
I just need to determine if the new thing belongs to *projects*, *areas*, or *resources*, add a folder, and get started.

1. Any completed activity can be thrown in *Archive* without bothering about it.

![](/assets/2023/luca-decimal/folders.jpg)
*Picture by [Wesley Tingey](https://unsplash.com/@wesleyphotography?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText) on [Unsplash](https://unsplash.com/it/foto/snNHKZ-mGfE?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText)*

## Merging PARA with Johnny Decimal

PARA could be fitted within Johnny Decimal, but it would be very restrictive.
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

What worked for me was restarting with PARA as the default framework, and merging just the valuable aspects for me from Johnny Decimal.
I followed [Forte's suggestion](https://fortelabs.com/blog/para-setup-guide/) of throwing everything in an *Archive YYYY-MM-DD*  folder to retrieve from only when needed.

What I took from Johnny Decimal is defining indexes just for a few folders which I want to "pin" to the the top.
The indexes are up to 100 instead of 10.
I will probably never use that many, but knowing that I could removes the mental burden of artificial boundaries.
If necessary, the additional indexing `xyz.ab` can be used, but only when it makes sense.

```
- 1 Projects
    - 101 Project A
    - 102 Project B
    - 103 Project C 
    - ...
- 2 Areas
    - 200 Health
        - ...
    - 201 Finances
        - 201.01 Bank account
        - 201.02 Savings account
        - 201.03 Credit cards
        - 201.04 Receipts
    - 202 Work
        - ...
    - 203 Family pictures
        - 2022
        - 2023
        - ...
    - ID documents
        - ...
    - Travel card
        - ...
    - Utilities bills
        - ...
    - ...
- 3 Resources
    - 300 Books
        - H.G. Wells
        - Umberto Eco
        - ...
    - 301 Comics
        - ...
    - 302 Software
        - 302.01 Operating systems
        - 302.02 Drivers
        - 302.03 Applications
    - History documentaries
        - ...
    - Instruction manuals
        - ...
    - Mathematics
        - ...
    - ...
- 4 Archive
    - Lorem Ipsum
        - ...
    - ...
```

## Conclusion

If you read this far, you might be interested in a [full specification I wrote](https://github.com/lucafrance/luca-decimal) while thinking about the system.
It is probably going to keep evolving over time and might not fit your workflow, but still be a good starting point.

## Link
- [Luca Decimal Specification on GitHub](https://github.com/lucafrance/luca-decimal)
- [Johnny Decimal](https://johnnydecimal.com/)
- [*Building a Second Brain* book](https://www.buildingasecondbrain.com/book)
- [The P.A.R.A. Method blog serie](https://fortelabs.com/blog/series/para)
