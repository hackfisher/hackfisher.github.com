---
layout: page
title: HackFisher
tagline: Stay Foolish, Stay Hungry
---
{% include JB/setup %}

<ul class="posts">
  {% for post in site.posts %}
    <li><time>{{ post.date | date: "%Y-%m-%d"}}</time>&nbsp;&nbsp;&nbsp;<a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>

