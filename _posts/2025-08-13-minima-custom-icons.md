---
title: How to add custom icons to the footer with Jekyll's Minima theme v3 🧪
tags: [Jekyll]
---

I wanted to add email and calendly next to my social links when migrating to Minima v3.
Here is how I did it.

**Note** As of writing, the stable version of Minima is [2.5.2](https://github.com/jekyll/minima/releases/tag/v2.5.2).
This instructions apply to the development version of Minima v3 as of [commit 1fe0fbfb](https://github.com/jekyll/minima/tree/1fe0fbfb5347fb4e047696d3b7479c04ed0051bc).

[Minima](https://github.com/jekyll/minima) allows to specify in [`_config.yml`](https://github.com/jekyll/minima/blob/1fe0fbfb5347fb4e047696d3b7479c04ed0051bc/_config_theme-dev.yml) which social links should be shown in the footer of the page.

```yml
  # Social Media Links
  #   Renders icons via Font Awesome Free webfonts CDN, based on ordered list of entries.
  #   Entry keys:
  #     * title    Tooltip rendered on hovering over icon.
  #     * icon     Font Awesome icon id. `github` corresponds to `fa-github`.
  #     * url      Full URL of social profile.
  social_links:
    - title: Minima Theme repository at GitHub
      icon: github
      url: "https://github.com/jekyll/minima"
    - title: Jekyll at X (formerly Twitter)
      icon: x-twitter
      url: "https://x.com/jekyllrb"
```

This is the corresponding liquid snippet in the [`social.html`](https://github.com/jekyll/minima/blob/1fe0fbfb5347fb4e047696d3b7479c04ed0051bc/_includes/social.html) include.
The icons in the [*Brands* Font Awesome icon pack](https://fontawesome.com/icons/packs/brands) can be retrieved, other icons can't be used by default.

{% raw %}
```html
<ul class="social-media-list">
{%- for entry in site.minima.social_links -%}
  <li>
    <a rel="me" href="{{ entry.url }}" target="_blank" title="{{ entry.title }}">
      <span class="grey fa-brands fa-{{ entry.icon }} fa-lg"></span>
    </a>
  </li>
{%- endfor -%}
```
{% endraw %}

You can use other [Font Awesome icons](https://fontawesome.com/icons/) by adding them with an if statement. 
I use a [custom `social.html`](https://github.com/lucafrance/lucafrance.github.io/blob/6b57ee50c4d46f556242d95f1adb1748a6d2ab4f/_includes/social.html) on this blog to an email and calendar link.

{% raw %}
```html
{%- for entry in site.minima.social_links -%}
  <li>
    <a rel="me" href="{{ entry.url }}" target="_blank" title="{{ entry.title }}">
      {%- if entry.icon == "calendar" -%}
        <span class="grey fa-solid fa-calendar fa-lg"></span>
      {%- elsif entry.icon == "envelope" -%}
        <span class="grey fa-solid fa-envelope fa-lg"></span>
      {%- else -%}
        <span class="grey fa-brands fa-{{ entry.icon }} fa-lg"></span>
      {%- endif -%}
    </a>
  </li>
{%- endfor -%}
```
{% endraw %}

I added my icons like this in the [`_config.yml`](https://github.com/lucafrance/lucafrance.github.io/blob/6b57ee50c4d46f556242d95f1adb1748a6d2ab4f/_config.yml) file.
```yml
  social_links:
    - title: Email
      icon: envelope
      url: "mailto: lucaf@lucaf.eu"
    - title: Set up a meeting
      icon: calendar
      url: "https://calendly.com/lucafeu/30min"
    - title: LinkedIn
      icon: linkedin
      url: "https://www.linkedin.com/in/lucaf-munich"
    - title: GitHub
      icon: github
      url: "https://github.com/lucafrance"
```
