{# This template extends the base.tpl template, meaning that base.tpl provides a large framework
   that this template then adds to. See base.tpl for more information. #}
{% extends "base.tpl" %}
{# `block head` means that the next two lines go where the `head` block is defined in base.tpl #}
{%- block head %}
    {# `super()` means that everything that's currently in the `head` block in base.tpl is added first, and then the
       next line is added to the end. #}
    {{- super() }}
    <link rel="next" href="{{ comic_base_dir }}/comic/{{ next_id }}/">
{%- endblock %}
{# This is the start of the `content` block. It's part of the <body> of the page. This is where all the visible
   parts of the website after the links bar and before the "Powered by comic_git" footer go. #}
{%- block content %}
    {% if navigation_bar_above_comic %}
    {# `include` blocks let you add templates into the middle of other templates. In an `if` block like this,
       we can add navigation bars based on the user's configuration. #}
    {% include "navigation_bar.tpl" %}
    {% endif %}

    {# When text is surrounded by {{ these double curly braces }}, it's representing a variable that's passed in by
       the Python script that generates the HTML file. That value is dropped into the existing HTML with no changes.
       For example, if the value passed in to `comic_base_dir` is `/comic_git`, then `{{ comic_base_dir }}/comic`
       becomes `/comic_git/comic` #}
    {%- if comic_paths %}
    <div id="comic-page">
            <img class="comic-image" title="" src="/happytrailscomic/your_content/images/guide.png">
    </div>

    <div id="comic-page-overlay" hidden="">
        <img id="comic-overlay-image" src="/happytrailscomic/your_content/comics/001/001.png" title="">
    </div>]
    <div id="blurbQuest">
	<div style="display: flex; align-items: center; gap: 12px;">
		<img class="profilePic" src="/happytrailscomic/your_content/images/meicon.png" title="" style="width: 138px;display: f;">
		<div>
			<p style="width: 210px;text-align: center;">If you'd like to make suggestions for future quests and vote for choices, check out my Patreon!</p>
			
		</div>
	<iframe src="https://yikuansun.github.io/patreonbutton/widget.html?username=https://www.patreon.com/cw/HappyTrailsComic/" height="68" scrolling="no" data-theme="light" style="border: 0; border-radius: 10px; overflow: hidden;scale: 82%;" width="200"></iframe></div>
        
            
            
            
        <hr id="post-body-break">
        
    </div>

    {% if navigation_bar_below_blurb %}
    {% include "navigation_bar.tpl" %}
    {% endif %}
{%- endblock %}
{%- block script %}
<script type="module">
    import { init_overlay } from "{{ base_dir }}/comic_git_engine/js/comic.js";
    init_overlay();
{% if transcripts %}
    import { init_transcript } from "{{ base_dir }}/comic_git_engine/js/transcript.js";
    init_transcript();
{% endif %}
</script>
{%- endblock %}