---
title: Visualizing r/place in Excel with Power Query
tags: [Excel, Power Query, VBA]
---

On April's fools 2017 [Reddit released r/place](https://www.reddit.com/r/announcements/comments/62mesr/place/), a social experiment with simple rules:

> There is an empty canvas.
> 
> You may place a tile upon it, but you must wait to place another.
> 
> Individually you can create something.
> 
> Together you can create something more.

TODO immagine qui

The [full dataset](https://www.reddit.com/r/redditdata/comments/6640ru/place_datasets_april_fools_2017/) was released as CSV afterwards with information about every single edit, *all* 16 567 567 of them.
(Un?)surprisingly, it is possible to visualize the final result in Excel. 

## Transformation in Power Query

Excel supports up to 1 048 576 rows and 16 384 columns.
This is not enough to show the full history, but plenty to show the final image of 1000 by 1000 pixels.
First I imported the CSV in Power Query, there are five columns:
- `ts` a timestamp,
- `user_hash` a hash of the username (to anonymize it),
- `x_coordinate`,
- `y_coordinate`,
- `color` a code for the 16 colours available.

I used *Group by* to add a column `last_change_in_pixel` with the most recent timestamp for each pixel.

SCREENSHOT

I added another column to check for each row whether it corresponds to the most recent change for that pixel,
which allowed me to keep exactly 1 million rows for corresponding to the 1000 x 1000 pixels of the final image.

SCREENSHOT

Shis would a "small" enough dataset for Excel to handle within one sheet.
I kept just the coordinates and colour column and pivoted it in a 1000 by 1000 table.

SCREENSHOT

## Square columns and rows

A simple VBA script made every cell and row of the sheet a perfect square, each one representing a pixel.

## Colours with conditional formatting

There were 16 colours available, each code corresponding to a hex triplet.

| index	color | code |
| --- | --- |
| 0	| #FFFFFF |
| 1	| #E4E4E4 |
| 2	| #888888 |
| 3	| #222222 |
| 4	| #FFA7D1 |
| 5	| #E50000 |
| 6	| #E59500 |
| 7	| #A06A42 |
| 8	| #E5D900 |
| 9	| #94E044 |
| 10 | #02BE01 |
| 11 | #00E5F0 |
| 12 | #0083C7 |
| 13 | #0000EA |
| 14 | #E04AFF |
| 15 | #820080 |

For each colour I defined a separate conditional format.

SCREENSHOT

I then applied a number format to not show the numbers.

## Results

## Links

- [Reddit - Place announcement](https://www.reddit.com/r/announcements/comments/62mesr/place/)
- [Reddit - Place Datasets (April Fools 2017)](https://www.reddit.com/r/redditdata/comments/6640ru/place_datasets_april_fools_2017/)