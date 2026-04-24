---
title: Another way to replace VBA with Python 🐍
tags: [Excel, Python, VBA]
mastodon: https://mastodon.social/@lucafeu/116458776205557367
---

TL, DR: The Python package is [available on PyPI](https://pypi.org/project/matita/).

I program mostly in Python, but I also used VBA over my career.
Despite the versatility of Python, VBA remains practical when automating in Microsoft Office.
This mostly applies to Excel, but I also wrote VBA scripts professionally in Word, PowerPoint, and Outlook.
I wanted all advantages of VBA in Python, which motivated me to create a Python wrapper for the [VBA object library](https://learn.microsoft.com/en-us/office/vba/api/overview).

<iframe width="560" height="315" src="https://www.youtube.com/embed/l5CBSrZSH-g?si=3qK322IBM6qJEVW4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen style="display: block; margin: 0 auto;"></iframe>

<br>
I designed it to match the VBA syntax as close as possible, while still being Pythonic.
The main applications are supported: Access, Excel, PowerPoint, Outlook, Word.

```python
from matita.office import excel as xl

def hello_world():
    xl_app = xl.Application()
    xl_app.visible = True

    wkb = xl_app.workbooks.add()
    wks = wkb.worksheets(1)
    c = wks.cells(1,1)
    c.value = "Hello world!"
```

```python
from matita.office import powerpoint as pp

def hello_world():
    pp_app = pp.Application()
    pp_app.visible = True
    prs = pp_app.presentations.add()
    sld = prs.slides.add(1, pp.ppLayoutText)
    shp = sld.shapes.addshape(pp.msoShapeRectangle, 100, 100, 200, 100)
    shp.text_frame.text_range.text = "Hello world!"
```

```python
from matita.office import word as wd

def hello_world():
    wd_app = wd.Application()
    wd_app.visible = True
    doc = wd_app.documents.add()
    par = doc.content.paragraphs.add()
    par.range.text = "Hello world!"
```

```python
from matita.office import outlook as ol

def hello_world():
    ol_app = ol.Application()
    mail = ol.MailItem(ol_app.create_item(ol.olMailItem))
    mail.body = "Hello world!"
    mail.display()
```

All VBA objects should also be supported, allowing complex automations like this one in PowerPoint.

<iframe width="560" height="315" src="https://www.youtube.com/embed/WjtXHP5dF9A?si=0tB-3WPdrsSex7sq" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen style="display: block; margin: 0 auto;"></iframe>

<br>

The main disadvantage is that everything runs through the corresponding Office application.
If you just need to extract data or create simple documents, other libraries are more practical.
For example [python-docx](https://python-docx.readthedocs.io), [python-pptx](https://python-pptx.readthedocs.io), [xlwings](https://docs.xlwings.org), or [pyexcel](https://docs.pyexcel.org).

If instead you want more formatting options or automation across multiple Office applications, this library might be useful to you.

The library is available on the [Python Package Index](https://pypi.org/project/matita/), the documentation is [hosted on Read the Docs](https://matita.readthedocs.io), and the source code is [on GitHub](https://github.com/lucafrance/matita).
