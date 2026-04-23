{% extends "base.tpl" %}
{%- block content %}

<div class="mainMenu">
	<table class="welcome">
		<tr>
			<th class="pageLinks"><a href="comic/{{ first_id }}/#comic-page"><img class="avaChibi" src="/your_content/images/avaChibiText.gif"></a></th>
			<th class="summary"><h1 class="announcement">Welcome to the World of Mothorial!</h1><br>
			<p>A webcomic about a bold fruit bat and an anxious goose-pheasant on a quest to save their world from a being as old as reality itself.</p></th>
			<th class="pageLinks"><a href="comic/{{ last_id }}/#comic-page"><img class="ackChibi" src="/your_content/images/ackChibiText.gif"></a></th>
		</tr>
	</table>
	<div class="summaryMobile">
		<h1 class="announcement">Welcome to the World of Mothorial! ON HIATUS</h1><br>
		<p>A webcomic about a bold fruit bat and an anxious goose-pheasant on a quest to save their world from a being as old as reality itself.</p>
	</div>
	<p>Written by Ari Noble and illustrated by Isabel Pereira.</p>
	<p>Rated PG-13 for dark themes and some violence and blood.</p>
	</div>
</div>
{%- endblock %}
