---
title: How to add custom icons to the footer in Jekyll’s Minima theme v3 🧪
tags: [Jekyll]
mastodon: https://mastodon.social/@lucafeu/115989149245398109
---

When I migrated my site to [Minima v3](https://jekyll.github.io/minima/), I wanted to display email and Calendly links alongside my social icons in the footer.
Here is how I did it.

> **Note**
> As of writing, the stable release of Minima is [v2.5.2](https://github.com/jekyll/minima/releases/tag/v2.5.2).
> The steps below apply to the development version of Minima v3 at [commit 1fe0fbfb](https://github.com/jekyll/minima/tree/1fe0fbfb5347fb4e047696d3b7479c04ed0051bc).
> There might be significant differences in the final release of Minima v3.

## How Minima handles social links

In Minima, you can configure the social icons shown in the footer via the [`_config.yml`](https://github.com/jekyll/minima/blob/1fe0fbfb5347fb4e047696d3b7479c04ed0051bc/_config_theme-dev.yml) file.

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

These entries are rendered in the [`social.html`](https://github.com/jekyll/minima/blob/1fe0fbfb5347fb4e047696d3b7479c04ed0051bc/_includes/social.html) include.
By default, only icons from the [Font Awesome *Brands* pack](https://fontawesome.com/icons/packs/brands) are supported.

{% raw %}
```html
{%- for entry in site.minima.social_links -%}
  <li>
    <a rel="me" href="{{ entry.url }}" target="_blank" title="{{ entry.title }}">
      <span class="grey fa-brands fa-{{ entry.icon }} fa-lg"></span>
    </a>
  </li>
{%- endfor -%}
```
{% endraw %}

## Adding non-brand icons

You can use icons from other Font Awesome categories by adding some [liquid](https://jekyllrb.com/docs/liquid/) if statements.
I created a [custom `social.html`](https://github.com/lucafrance/lucafrance.github.io/blob/6b57ee50c4d46f556242d95f1adb1748a6d2ab4f/_includes/social.html) for my blog to include the the [email](https://fontawesome.com/icons/envelope?f=classic&s=solid) and [calendar](https://fontawesome.com/icons/calendar?f=classic&s=solid) icons.

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

Finally, I added my new links to [`_config.yml`](https://github.com/lucafrance/lucafrance.github.io/blob/6b57ee50c4d46f556242d95f1adb1748a6d2ab4f/_config.yml).

```yml
  social_links:
    - title: Email
      icon: envelope
      url: "mailto: lucaf@lucaf.eu"
    - title: Set up a meeting
      icon: calendar
      url: "https://calendly.com/example"
    - title: LinkedIn
      icon: linkedin
      url: "https://www.linkedin.com/in/lucaf-munich"
    - title: GitHub
      icon: github
      url: "https://github.com/lucafrance"
```

By creating a custom `social.html` include, you can extend Minima v3 to display any Font Awesome icon you want, not just brand logos.
This makes it easy to add functional links like email and calendar booking alongside your social profiles.
