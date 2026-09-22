---
title: RenderCV is great
tags: []
mastodon: 
---

In 2022 [I decided to start writing my curriculum vitae in markdown]({% post_url 2022/2022-08-18-cv-markdown-pandoc-python-latex %}).
I would then convert the markdown to LaTeX with a Python script, and then generate a pdf.

This year I switched to [RenderCV](https://rendercv.com/), a Python package which renders a yaml CV to different formats.
I quickly preferred it to my previous solution for several reasons and can want to recommend it further.

{:refdef: style="text-align: center;"}
![A picture of the "Curriculum vitae" mural at the East Side Gallery in Berlin](/assets/2026/rendercv/cv-east-side-gallery.jpg){: width="70%" }<br>
[“East Side Gallery”](https://www.flickr.com/photos/frans16611/2834891545) by [François Philipp](https://www.flickr.com/photos/frans16611/), [CC BY 2.0](https://creativecommons.org/licenses/by/2.0/deed.en)
{: refdef}

- Writing the CV in yaml instead of markdown feels more intuitive.
The relevant information of a CV is the content and the structure, which yaml abstracts in a user friendly way.
I tried [other solutions based on json](https://jsonresume.org/), like [Reactive Resume](https://rxresu.me) but they were not as practical for me.
- There is no reliance on an external or self-hosted service.
I just run a PowerShell command as I was used to with my previous template.
- As with my previous solution, the relevant information is in simple text and can be version controlled with git.
- It is LLM friendly. I can give the documentation as reference and get valid CV, instead of describing the structure to follow in markdown.
E.g. a command would be: `Translate this CV to English. Use this yaml format: https://docs.rendercv.com/user_guide/yaml_input_structure/cv`.
- One of my motivations for *luca-cv* was to have an easy way to convert my CV docx.
I used [pandoc](https://pandoc.org/) to convert the markdown to docx.
Since then, I stopped bothering with it, but RenderCV still offers me the option to do it.
RenderCV also supports markdown output, allowing me to convert that to docx if I ever want to.
- Formatting options are defined in the yaml, but I can overwrite them with additional argument.
I used this feature to test multiple formatting options at once and pick the one I liked the most.

```powershell
## Compare fonts
rendercv render .\Luca_Franceschini_de_CV.yaml --design.typography.font_family "Open Sans"     -typ font_comparison/cv_open_sans.typ   -png font_comparison/cv_open_sans.png   -pdf font_comparison/cv_open_sans.pdf   -nomd -nohtml
rendercv render .\Luca_Franceschini_de_CV.yaml --design.typography.font_family "Noto Sans"     -typ font_comparison/cv_noto_sans.typ   -png font_comparison/cv_noto_sans.png   -pdf font_comparison/cv_noto_sans.pdf   -nomd -nohtml
rendercv render .\Luca_Franceschini_de_CV.yaml --design.typography.font_family "Lato"          -typ font_comparison/cv_lato.typ        -png font_comparison/cv_lato.png        -pdf font_comparison/cv_lato.pdf        -nomd -nohtml
rendercv render .\Luca_Franceschini_de_CV.yaml --design.typography.font_family "Source Sans 3" -typ font_comparison/cv_source_sans.typ -png font_comparison/cv_source_sans.png -pdf font_comparison/cv_source_sans.pdf -nomd -nohtml
rendercv render .\Luca_Franceschini_de_CV.yaml --design.typography.font_family "Roboto"        -typ font_comparison/cv_roboto.typ      -png font_comparison/cv_roboto.png      -pdf font_comparison/cv_roboto.pdf      -nomd -nohtml
rendercv render .\Luca_Franceschini_de_CV.yaml --design.typography.font_family "Poppins"       -typ font_comparison/cv_poppins.typ     -png font_comparison/cv_poppins.png     -pdf font_comparison/cv_poppins.pdf     -nomd -nohtml
rendercv render .\Luca_Franceschini_de_CV.yaml --design.typography.font_family "Ubuntu"        -typ font_comparison/cv_ubuntu.typ      -png font_comparison/cv_ubuntu.png      -pdf font_comparison/cv_ubuntu.pdf      -nomd -nohtml
rendercv render .\Luca_Franceschini_de_CV.yaml --design.typography.font_family "Comic Sans MS" -typ font_comparison/cv_comic_sans.typ  -png font_comparison/cv_comic_sans.png  -pdf font_comparison/cv_comic_sans.pdf  -nomd -nohtml

# Compare themes
rendercv render .\Luca_Franceschini_de_CV.yaml --design.theme classic            -typ theme_comparison/cv_classic.typ            -png theme_comparison/cv_classic.png            -pdf theme_comparison/cv_classic.pdf            -nomd -nohtml
rendercv render .\Luca_Franceschini_de_CV.yaml --design.theme engineeringclassic -typ theme_comparison/cv_engineeringclassic.typ -png theme_comparison/cv_engineeringclassic.png -pdf theme_comparison/cv_engineeringclassic.pdf -nomd -nohtml
rendercv render .\Luca_Franceschini_de_CV.yaml --design.theme engineeringresumes -typ theme_comparison/cv_engineeringresumes.typ -png theme_comparison/cv_engineeringresumes.png -pdf theme_comparison/cv_engineeringresumes.pdf -nomd -nohtml
rendercv render .\Luca_Franceschini_de_CV.yaml --design.theme moderncv           -typ theme_comparison/cv_moderncv.typ           -png theme_comparison/cv_moderncv.png           -pdf theme_comparison/cv_moderncv.pdf           -nomd -nohtml
rendercv render .\Luca_Franceschini_de_CV.yaml --design.theme sb2nov             -typ theme_comparison/cv_sb2nov.typ             -png theme_comparison/cv_sb2nov.png             -pdf theme_comparison/cv_sb2nov.pdf             -nomd -nohtml
```
