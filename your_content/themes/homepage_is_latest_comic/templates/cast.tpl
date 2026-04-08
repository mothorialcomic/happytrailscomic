{# This template extends the base.tpl template, meaning that base.tpl provides a large framework
   that this template then adds to. See base.tpl for more information. #}
{% extends "base.tpl" %}
{# This is the start of the `content` block. It's part of the <body> of the page. This is where all the visible
   parts of the website after the links bar and before the "Powered by comic_git" footer go. #}
{% block content %}
	<header class="post-header">        
<div class="overlay"></div>
<div style="background-color: #E3D8C0;border-radius: 25px;border: 10px solid 
#E3DBC0;margin-left: -10px;position: absolute;z-index: 1000;
width: 870px;
height: 480px;
">
  <div style="display: flex;  gap: 12px;align-items: flex-start;margin-top: 10px;margin-left: 5px;">
		<img class="characterPortrait" src="/happytrailscomic/your_content/images/castpage/maple.png">
		<div>
			<div style="margin: 20px;"><h1 style="font-family: &quot;Caprasimo&quot;, sans-serif;color: 
#47604b;font-size: 2.5em;font-weight: normal;
padding: 0;
margin-bottom: -10px;
/*! margin-left: -9px; */
text-align: left;
">Maple</h1><p class="characterDetails">Cocker spaniel</p><p class="characterDetails">28 • F (she/her)</p><article id="post-body">
				<p>Maple is a former fitness coach who ran a hiking club after hours! She came to really love the outdoors and its beauty, and quit her job to pursue an easy living in the local National Park. Using the last of her cash, she bought an RV and renovated it.She loves good handiwork, and she has the resolve to attempt high stakes tasks and see them through.</p><p>Maple loves the smell of fresh rain on grass, the feeling of rough tree bark, and the taste of a freshly foraged mushroom (checked for safety, of course!).</p><p>What might have started off with pure intentions ends when she meets Syrup, her now long term partner!</p>

			</article></div>
			
		</div>
	</div>
</div><h1 style="font-family: &quot;Fredoka&quot;, sans-serif;color: 
#47604b;font-size: 2.5em;font-weight: normal;">Characters</h1>
<div class="bulletinBoard">
  
<img src="/happytrailscomic/your_content/images/castpage/maplepolaroid.png" class="polaroid polaroidMaple">
<img class="polaroid polaroidSyrup" src="/happytrailscomic/your_content/images/castpage/syruppolaroid.png">
<img src="/happytrailscomic/your_content/images/castpage/barrypolaroid.png" class="polaroid polaroidBarry">
<img class="polaroid polaroidBrie" src="/happytrailscomic/your_content/images/castpage/briepolaroid.png">
</div>
    </header>
{% endblock %}
{% block script %}
{% endblock %}`