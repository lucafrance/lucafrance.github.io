---
title: How I manage my CV with Markdown, Pandoc, Python, and LaTeX
tags: [Python]
---

I had a first world problem.
While applying for projects, many recruiters ask for the CV in Word format.
They want to import it in their system or adapt it to a standard template.
But I don't have my CV in docx, because I wrote it in LaTeX with the [moderncv package](https://www.ctan.org/tex-archive/macros/latex/contrib/moderncv).

![](/assets/2022/cv-markdown/cv-tex-pdf.png)

The simplest solution would have been to switch to a Word template.
Having converted to the school of LaTeX, this was intellectually unfeasible.
I needed another solution.

First I tried converting the tex file to docx, the results were underwhelming.
Either most of the CV was missing or the formatting was all over the place.
I also tried converting the pdf to docx and got similar results.
Converters don't really know how to interpret moderncv's format.

![](/assets/2022/cv-markdown/first-approach.png)

Another option was having a separate docx CV with a simpler format.
The recruiters just need a convenient way to copy my information.
It doesn't need to be pretty as long as it's consistent with my pdf CV.
This would have been acceptable, but then I would need to keep the tex and docx CVs consistent manually. 

I decided to go one step further: write the CV in markdown and let a script generate the rest.

![](/assets/2022/cv-markdown/final-approach.png)

Since moderncv's template has a simple structure, I could replicate it easily.
Pandoc converts markdown to docx perfectly.
It doesn't look as good as LaTeX's pdf, but is functional for a recruiter to copy over the necessary information.

![](/assets/2022/cv-markdown/cv-pdf-docx.png)

I wrote a Python script to convert the markdown CV to tex.
The tex file was like the original[^1] and is then converted to pdf with pdflatex[^2].
I then wrapped up all the necessary commands in a PowerShell script.

 ```powershell
pandoc -s cv_en_john_doe.md -o cv_en_john_doe.docx
python md_to_tex.py cv_en_john_doe.md english
pdflatex cv_en_john_doe.tex
```

Now I just need to keep my CV up to date in markdown and run one script to get the LaTeX pdf and the simpler docx.
If this can be useful to you, I created a [template to clone](https://github.com/lucafrance/luca-cv)[^3].

## Links
- [moderncv on the Comprehensive TeX Archive Network (CTAN)](https://www.ctan.org/tex-archive/macros/latex/contrib/moderncv)
- [Pandoc](https://pandoc.org/)
- [Template on Github](https://github.com/lucafrance/luca-cv)

## Footnotes

[^1]: I actually cheated by replacing LaTeX's `itemize` lists with moderncv's `cvitem` and `\( \circ \) ` for the bullet point.
[^2]: The Python script *md_to_tex.py* can take an optional argument for the language to use with [babel](https://www.ctan.org/pkg/babel).
[^3]: Writing a CV in LaTeX correlates with versioning it in git.
