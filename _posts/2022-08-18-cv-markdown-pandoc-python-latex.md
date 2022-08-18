---
title: How I manage my CV with Markdown, Pandoc, Python, and LaTeX
tags: [Python]
---

I had a first world problem.
I quit my job recently to become a freelancer and am looking for my first projects.
Many recruiters ask for the CV in Word format to copy it in their system or prepare their CV according to their template.
The thing is, I wrote my CV in LaTeX with the [moderncv package](https://www.ctan.org/tex-archive/macros/latex/contrib/moderncv).

TODO screenshot del mio CV qui

The simplest  solution would have been to switch to a Word template.
For me that's inconceivable on an intellectual level.
LaTeX works just to elegantly to go back to Word like a peasant, I needed another solution.

First I tried converting the tex file to docx.
The results were underwhelming.
Either half the CV was missing or the formatting was all over the place.
Converters don't really know how to interpret moderncv's format.
I also tried converting the pdf to docx and got similar results.

TODO screenshot/disegnino della conversione da tex a docx

Another option was having a separate docx CV with a simpler format.
The recruiters just want a convenient way to copy the key information wherever they need to.
The docx document doesn't need to look as good as the moderncv's pdf as long as the information is consistent.
To avoid keeping the tex and docx consistently up to date manually, I decided to go one step further and write my CV in markdown.

TODO desigino di cosa viene convertito come dove

Since moderncv's template has a simple structure, I could write replicate it in Markdown (md).
The markdown file can easily be converted to docx by Pandoc.
It doesn't look as good as LaTeX's pdf, but is perfectly functional to copy over the necessary information.

TODO screenshot markdown e word da pandoc

I wrote a Python script to convert the markdown CV to tex.
I managed to get the exact same tex file as before[^1], which is then converted to pdf with pdflatex[^2].
I then wrapped up all the necessary commands in a PowerShell script.

 ```powershell
pandoc -s cv_en_john_doe.md -o cv_en_john_doe.docx
python md_to_tex.py cv_en_john_doe.md english
pdflatex cv_en_john_doe.tex
```

Now I just need to keep my CV up to date in markdown and just need to run one script to get LaTeX pdf and the simpler docx.
If think this can be useful to you, I created a [template you can clone](https://github.com/lucafrance/luca-cv)[^3].

## Links
- [moderncv on the Comprehensive TeX Archive Network (CTAN)](https://www.ctan.org/tex-archive/macros/latex/contrib/moderncv)
- [Pandoc](https://pandoc.org/)
- [My code on Github](https://github.com/lucafrance/luca-cv)

## Footnotes

[^1]: I just cheated a little bit replacing LaTeX `itemize` lists with moderncv's `cvitem` and `\( \circ \) ` for the bullet point.
[^2]: The Python script *md_to_tex.py* can take an optional argument of the language to use with [babel](https://www.ctan.org/pkg/babel).
[^3]: The fact that writing my CV in LaTeX probably correlates with versioning it in git.
