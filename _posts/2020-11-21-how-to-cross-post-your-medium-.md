---
title: How to cross-post your Medium stories to Jekyll with Python
canonicalurl: https://medium.com/@lucafrance/how-to-cross-post-your-medium-stories-to-jekyll-with-python-47a5eda4e47a
---

While Medium is a great blog hosting platform, I also like keeping copy of everything I do and was looking for a way to host my stories also on [my Jekyll website](https://lucafrance.github.io/). My requirements were:


* Automating future updates through a script.
* Saving the images of the stories locally.
* Converting the stories to Markdown.

Medium has a [functionality to download your information,](https://help.medium.com/hc/en-us/articles/115004745787-Download-your-information) but it doesn’t fulfil any of the requirements above, therefore I wrote a [tool in Python that does](https://pypi.org/project/mediumbackup/). Here is how it works.

#### Updating your medium stories

First move to your Jekyll’s site directory and install the package.


```
python -m pip install --upgrade pip mediumbackup <2
```
Then download the stories and corresponding images by adding your username in the next command. All stories are downloaded as markdown files to the *\_post* folder and all corresponding images to *assets/medium\_images*.


```
python -m mediumbackup "<your username here>" --f "md" --backup\_dir "\_posts" --download\_images --images\_dir "/assets/medium\_images" --jekyll\_front\_matter
```
Every markdown file includes a [front matter](https://jekyllrb.com/docs/front-matter/) with the story title and the link to the original story, e.g.:


```
---
title: How to download your entire GOG-library with LGOGDownloader
canonicalurl: <https://medium.com/@lucafrance/how-to-the-download-your-entire-gog-library-with-lgogdownloader-a0232de2b7df>
---
```
#### Adding a reference to the original articles

Duplicate posting can confuse search engines and penalize your content. To prevent this you can add a [canonical link relation](http://microformats.org/wiki/rel-canonical) to the layout’s head.


```
{% if page.canonicalurl %}
<link rel="canonical" href="{{ page.canonicalurl }}">
{% endif %}
```
I also added a link to the posts’ layout to make the reference visible on the page.


```
{% if page.canonicalurl %}
<p> This article was originally posted here: <a href="{{ page.canonicalurl }}" target="\_blank"> {{ page.canonicalurl }}</a></p>
{% endif %}
```
#### Publication

After releasing your changes ([in my case to GitHub](https://github.com/lucafrance/lucafrance.github.io)) your stories will be available both on medium and on your Jekyll website.

![](/assets/medium_images/1-S4onWSOAcLmgpfgDxHdpg.png)

Running the command again will update the Jekyll site with new and edited stories, but deleting a story on medium won’t remove it from Jekyll.

#### Copyright

While you can download stories for any username, you shouldn’t repost other authors’ content. [Medium’s terms of service](https://policy.medium.com/medium-terms-of-service-9db0094a1e0f) let you retain the rights to your content, but you don’t get to reuse what you don’t own.

