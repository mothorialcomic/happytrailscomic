{# This template extends the base.tpl template, meaning that base.tpl provides a large framework
   that this template then adds to. See base.tpl for more information. #}
{% extends "base.tpl" %}
{# This is the start of the `content` block. It's part of the <body> of the page. This is where all the visible
   parts of the website after the links bar and before the "Powered by comic_git" footer go. #}
{% block content %}
	<<h1 class="comicsListTitle">Comics</h1>
	<div class="castBorder">
		<table class="castpage" style="width: 100%;">
			<tbody><tr style="/*! margin: 0 auto; *//*! position: relative; */">
				<td class="image" style="padding: -40px;">
					<a href="/happytrailscomic/nightofthelustmoon/comic/001/">
						<img src="/happytrailscomic/your_content/images/htq1.png" class="comics">
					</a>
					<a href="/happytrailscomic/nightofthelustmoon/comic/001/">
						<img src="/happytrailscomic/your_content/images/htq1.png" class="comics">
					</a>
					<<a href="/happytrailscomic/nightofthelustmoon/comic/001/">
						<img src="/happytrailscomic/your_content/images/sls.png" class="comics">
					</a>
				</td>
				
			</tr>
		</tbody></table>
	</div>
{% endblock %}
{% block script %}
{% endblock %}`
