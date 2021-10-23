<div class="bg-thirty p-2 mb-4">
<a href="{{ include.post.url | relative_url }}">
    <h2 class="my-0 underline:hover text-dark">{{ include.post.title }}</h2>
</a>
    <small class="post-date">{{ include.post.date | date: "%-d/%Y" }}</small>
<p><small> {{ include.post.excerpt }} </small></p>

</div>
