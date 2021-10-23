<br />
<br />

<div class="d-flex justify-center gap-small">
    {% for category in site.data.categories %}
    <a class="badge {% if page.pagination.category == category.name %}active{% endif %}" href="/blog/{% if page.pagination.category != category.name %}{{ category.name }}{% endif %}">{{ category.name }}</a>
    {% endfor %}
</div>

<br />
<br />

{% for post in include.paginator.posts %}
{% include preview.md post=post %}
{% endfor %}

{% if include.paginator.total_pages > 1 %}

<ul>
  {% if include.paginator.previous_page %}
  <li>
    <a href="{{ include.paginator.previous_page_path | prepend: site.baseurl }}">Newer</a>
  </li>
  {% endif %}
  {% if include.paginator.next_page %}
  <li>
    <a href="{{ include.paginator.next_page_path | prepend: site.baseurl }}">Older</a>
  </li>
  {% endif %}
</ul>
{% endif %}
