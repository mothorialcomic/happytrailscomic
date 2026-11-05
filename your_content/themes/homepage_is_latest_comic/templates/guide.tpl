{# This template extends the base.tpl template, meaning that base.tpl provides a large framework
   that this template then adds to. See base.tpl for more information. #}
{% extends "base.tpl" %}
{# `block head` means that the next two lines go where the `head` block is defined in base.tpl #}
{%- block head %}
    {# `super()` means that everything that's currently in the `head` block in base.tpl is added first, and then the
       next line is added to the end. #}
    {{- super() }}
    <link rel="next"
      href="{{ comic_base_dir }}/comic/{{ next_id }}/">
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
       For example, if the value passed in to `comic_base_dir` is `/comic_git`, then `/comic`
       becomes `/comic_git/comic` #}
    <div id="comic-page">
			<img class="comic-image"
			     title=""
			     src="{{ base_dir }}/your_content/images/guide.png">
    </div>
			<div id="blurbQuest">
				<div style="display: flex; align-items: center; gap: 12px;">
					<img class="profilePic"
					     src="{{ base_dir }}/your_content/images/meicon.png"
					     title=""
					     style="width: 138px;display: f;">
						<div>
							<p style="width: 210px;text-align: center;">If you'd like to make suggestions for future quests and vote for choices, check out my Patreon!</p>
						</div>
						<img title=""
						     src="{{ base_dir }}/your_content/images/patreonbutton.png"
						     class="patreonButtonHTQ"
						     style="cursor: pointer; display: initial;">
							<img title=""
							     src="{{ base_dir }}/your_content/images/patreonbuttonhover.png"
							     class="patreonButtonHTQHover"
							     style="display: none; cursor: default;">
								<hr id="post-body-break">
        </div>
    </div>
	<div id="blurbQuestMobile">
		<div style="display: flex;">
			<div style="width: 100%;display: flex;align-items: center;justify-content: center;"><img class="profilePic" src="{{ base_dir }}/your_content/images/meicon.png" title="" style="width: 50px; height: 50px;">
			<span class="link-bar-separator">|</span>
			<p style="text-align: center;font-size: 10px;width: 100px;">If you'd like to make suggestions for future quests and vote for choices, check out my Patreon!</p>
			</div>
		</div>
		<img title="" src="{{ base_dir }}/your_content/images/patreonbutton.png" class="patreonButtonHTQMobile" style="cursor: pointer; display: initial;">
		<img title="" src="{{ base_dir }}/your_content/images/patreonbuttonhover.png" class="patreonButtonHTQMobileHover" style="display: none; cursor: default;">
	</div>
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
								<script>
document.addEventListener('DOMContentLoaded', () => {
  (function() {
    const patreonButtonCanvas = document.createElement('canvas');
    const patreonButtonCtx = patreonButtonCanvas.getContext('2d');
    const patreonButton = document.querySelector('.patreonButtonHTQ');
    const patreonButtonHover = document.querySelector('.patreonButtonHTQHover');
    
    function setupPatreonButtonCanvas(img) {
      patreonButtonCanvas.width = img.naturalWidth;
      patreonButtonCanvas.height = img.naturalHeight;
      patreonButtonCtx.drawImage(img, 0, 0);
    }
    
    patreonButton.onload = () => setupPatreonButtonCanvas(patreonButton);
    if (patreonButton.complete) setupPatreonButtonCanvas(patreonButton);
    
    function isOverOpaque(e, img) {
      const rect = img.getBoundingClientRect();
      const scaleX = img.naturalWidth / rect.width;
      const scaleY = img.naturalHeight / rect.height;
      const x = (e.clientX - rect.left) * scaleX;
      const y = (e.clientY - rect.top) * scaleY;
      return patreonButtonCtx.getImageData(x, y, 1, 1).data[3] > 0;
    }
    
    patreonButton.addEventListener('mousemove', (e) => {
      if (isOverOpaque(e, patreonButton)) {
        patreonButton.style.cursor = 'pointer';
        patreonButton.style.display = 'none';
        patreonButtonHover.style.display = 'initial';
        setupPatreonButtonCanvas(patreonButtonHover);
      } else {
        patreonButton.style.cursor = 'default';
      }
    });
    
    patreonButtonHover.addEventListener('mousemove', (e) => {
      if (isOverOpaque(e, patreonButtonHover)) {
        patreonButtonHover.style.cursor = 'pointer';
      } else {
        patreonButtonHover.style.cursor = 'default';
        patreonButtonHover.style.display = 'none';
        patreonButton.style.display = 'initial';
        setupPatreonButtonCanvas(patreonButton);
      }
    });
    
    patreonButtonHover.addEventListener('mouseleave', () => {
      patreonButtonHover.style.display = 'none';
      patreonButtonHover.style.cursor = 'default';
      patreonButton.style.display = 'initial';
      setupPatreonButtonCanvas(patreonButton);
    });
    
    patreonButton.addEventListener('click', (e) => {
      if (isOverOpaque(e, patreonButton)) {
        window.open('https://www.patreon.com/cw/puppeypawbs', '_blank');
      }
    });
    
    patreonButtonHover.addEventListener('click', (e) => {
      if (isOverOpaque(e, patreonButtonHover)) {
        window.open('https://www.patreon.com/cw/puppeypawbs', '_blank');
      }
    });
  })();
});

document.addEventListener('DOMContentLoaded', () => {
  (function() {
    const patreonButtonCanvas = document.createElement('canvas');
    const patreonButtonCtx = patreonButtonCanvas.getContext('2d');
    const patreonButton = document.querySelector('.patreonButtonHTQMobile');
    const patreonButtonHover = document.querySelector('.patreonButtonHTQMobileHover');
    
    function setupPatreonButtonCanvas(img) {
      patreonButtonCanvas.width = img.naturalWidth;
      patreonButtonCanvas.height = img.naturalHeight;
      patreonButtonCtx.drawImage(img, 0, 0);
    }
    
    patreonButton.onload = () => setupPatreonButtonCanvas(patreonButton);
    if (patreonButton.complete) setupPatreonButtonCanvas(patreonButton);
    
    function isOverOpaque(e, img) {
      const rect = img.getBoundingClientRect();
      const scaleX = img.naturalWidth / rect.width;
      const scaleY = img.naturalHeight / rect.height;
      const x = (e.clientX - rect.left) * scaleX;
      const y = (e.clientY - rect.top) * scaleY;
      return patreonButtonCtx.getImageData(x, y, 1, 1).data[3] > 0;
    }
    
    patreonButton.addEventListener('mousemove', (e) => {
      if (isOverOpaque(e, patreonButton)) {
        patreonButton.style.cursor = 'pointer';
        patreonButton.style.display = 'none';
        patreonButtonHover.style.display = 'initial';
        setupPatreonButtonCanvas(patreonButtonHover);
      } else {
        patreonButton.style.cursor = 'default';
      }
    });
    
    patreonButtonHover.addEventListener('mousemove', (e) => {
      if (isOverOpaque(e, patreonButtonHover)) {
        patreonButtonHover.style.cursor = 'pointer';
      } else {
        patreonButtonHover.style.cursor = 'default';
        patreonButtonHover.style.display = 'none';
        patreonButton.style.display = 'initial';
        setupPatreonButtonCanvas(patreonButton);
      }
    });
    
    patreonButtonHover.addEventListener('mouseleave', () => {
      patreonButtonHover.style.display = 'none';
      patreonButtonHover.style.cursor = 'default';
      patreonButton.style.display = 'initial';
      setupPatreonButtonCanvas(patreonButton);
    });
    
    patreonButton.addEventListener('click', (e) => {
      if (isOverOpaque(e, patreonButton)) {
        window.open('https://www.patreon.com/cw/puppeypawbs', '_blank');
      }
    });
    
    patreonButtonHover.addEventListener('click', (e) => {
      if (isOverOpaque(e, patreonButtonHover)) {
        window.open('https://www.patreon.com/cw/puppeypawbs', '_blank');
      }
    });
  })();
});
</script>
{%- endblock %}
