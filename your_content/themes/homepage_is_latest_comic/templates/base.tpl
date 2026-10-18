{# This template is the base for all other templates, meaning that all other templates will be adding to the blocks
   in this template, before they're used to create HTML files. #}
{{ autogenerate_warning|safe }}
<!DOCTYPE html>
<html lang="en" prefix="og: http://ogp.me/ns#">
	<head>
    {# If blocks let you check the value of a variable and then generate different HTML depending on that variable.
       The if block below will check if the `google_analytics_id` variable is defined (set in the Python script by
       the "Tracking ID" value of the "Google Analytics" section in the comic_info.ini file). If so, it then
       includes all the text between the `{% if ... %}` and `{% endif %}` blocks. #}
    {%- if google_analytics_id %}
    <!-- Global site tag (gtag.js) - Google Analytics -->
    {# When text is surrounded by {{ these double curly braces }}, it's representing a variable that's passed in by
       the Python script that generates the HTML file. That value is dropped into the existing HTML with no changes.
       For example, if the value passed in to `google_analytics_id` is `UA-123456789-0`, then
       `id={{ google_analytics_id }}` becomes `id=UA-123456789-0` #}
    <script async src="https://www.googletagmanager.com/gtag/js?id={{ google_analytics_id }}"/>
		<script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', '{{ google_analytics_id }}');
    </script>
    {%- endif %}
    {# Naming the blocks like this lets other templates either replace or add onto this block by referencing it by
       name. #}
    {%- block head %}
    <meta charset="UTF-8">
			<link rel="preconnect" href="https://fonts.gstatic.com">
				<link rel="stylesheet" type="text/css" href="/your_content/themes/{{ theme }}/css/fonts.css">
					<link rel="stylesheet" type="text/css" href="/comic_git_engine/css/base.css">
						<link rel="stylesheet" type="text/css" href="/comic_git_engine/css/{{ template_name }}.css">
							<link rel="stylesheet" type="text/css" href="/your_content/themes/{{ theme }}/css/stylesheet.css">
								<link rel="stylesheet" type="text/css" href="/your_content/themes/{{ theme }}/css/base.css">
									<link rel="stylesheet" type="text/css" href="/your_content/themes/{{ theme }}/css/{{ template_name }}.css">
    {%- if comic_folder != "" %}
    {# Allows for setting specific CSS for an extra comic. #}
    <link rel="stylesheet" type="text/css" href="/your_content/themes/{{ theme }}/css/{{ comic_folder.strip('/') }}.css">
    {%- endif %}
    <link rel="icon" href="/favicon.ico" type="image/x-icon"/>
											<meta property="og:title" content="{{ comic_title }}"/>
											<meta property="og:description" content="{{ comic_description }}"/>
											<meta property="og:type" content="website"/>
											<meta property="og:url" content="{{ comic_url }}/"/>
											<meta property="og:image" content="{{ comic_url + '/your_content/images/preview_image.png' }}"/>
											<meta property="og:image:width" content="200"/>
											<meta property="og:image:height" content="200"/>
											<meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
												<meta name="theme-color" content="#47604B">
													<title>{{ _title }} - {{ comic_title }}</title>
    {%- endblock %}
</head>
												<body>
{# This is the start of the `body` block. This is where all the visible parts of the website show up. #}
{% block body %}
<div id="container">
	<div id="banner">
		<a id="banner-img-link" href="/">
			<img id="banner-img" alt="banner" src="{{ banner_image }}">
		</a>
	</div>
    {%- if links %}
	<div style="" id="allLinks">
		<div id="links-bar">
		{# For loops let you take a list of values and do something for each of those values. In this case,
		   it runs through list of all the links provided by the [Links Bar] section of your comic_info.ini file,
		   and it generates a link for each of them. #}
		{%- for link in links %}
			<a class="link-bar-link" href="{{ link.url }}" {{'target="_blank" ' if link.open_in_new_tab else"" }}> {%- if link.image_url %}
																	<img class="link-bar-link-image" src="{{ link.image_url }}">
				{%- else %}
					{{ link.name }}
				{%- endif %}
			</a>
			{% if not loop.last %}<span class="link-bar-separator">|</span>{% endif %}
		{%- endfor %}
		</div>
    {%- endif %}
	<div id="mobile-header">
		<button class="hamburger" aria-label="Toggle menu">
			<span></span>
			<span></span>
			<span></span>
		</button>
		<div id="menu-dropdown">
			<div id="menu-dropdown-inner">
				<div id="links-bar-mobile">
					{# For loops let you take a list of values and do something for each of those values. In this case,
					   it runs through list of all the links provided by the [Links Bar] section of your comic_info.ini file,
					   and it generates a link for each of them. #}
					{%- for link in links %}
						<a class="link-bar-link" href="{{ link.url }}" {{'target="_blank" ' if link.open_in_new_tab else"" }}> {%- if link.image_url %}
																		<img class="link-bar-link-image" src="{{ link.image_url }}">
							{%- else %}
								{{ link.name }}
							{%- endif %}
						</a>
					{%- endfor %}
				</div>
			</div>
		</div>
	</div>

    {# This is the start of the `content` block. Nothing is here now because other templates are expected to fill it
       in on their own. It will contain everything on a webpage after the links bar and before the
       "Powered by comic_git" footer. #}
    {% block content %}{% endblock %}

    {%- if enable_webring  %}
    {% include "webring.tpl" %}
    {%- endif %}
</div>

													<div id="socials">
														<a class="extraLinks" href="https://bsky.app/profile/puppeypawbs.art" role="button" style="color: #4F614E; padding-top: 4px;">
															<svg width="40" height="40" viewBox="0 0 40 40" fill="currentColor">
																<path d="M20,19.7c-1.6-3.1-5.9-8.8-9.9-11.6C6.2,5.4,4.8,5.9,3.8,6.3C2.7,6.8,2.5,8.5,2.5,9.5s0.6,8.2,0.9,9.4 c1.2,4,5.4,5.3,9.3,4.9c0.2,0,0.4-0.1,0.6-0.1c-0.2,0-0.4,0.1-0.6,0.1C7,24.7,1.9,26.8,8.6,34.2c7.3,7.6,10-1.6,11.4-6.3 c1.4,4.7,3,13.5,11.3,6.3c6.2-6.3,1.7-9.5-4-10.3c-0.2,0-0.4,0-0.6-0.1c0.2,0,0.4,0.1,0.6,0.1c3.9,0.4,8.1-0.9,9.3-4.9 c0.4-1.2,0.9-8.4,0.9-9.4s-0.2-2.7-1.3-3.2c-1-0.4-2.4-0.9-6.3,1.8C25.9,10.9,21.6,16.7,20,19.7z"/>
															</svg>
														</a>
														<span class="link-bar-separator">|</span>
														<a class="extraLinks" class="n02" href="https://www.twitter.com/puppeypawbs" role="button" style="color: #4F614E; padding-top: 4px;">
															<svg width="40" height="40" viewBox="0 0 40 40" fill="currentColor">
																<path d="M36.3,10.2c-1,1.3-2.1,2.5-3.4,3.5c0,0.2,0,0.4,0,1c0,1.7-0.2,3.6-0.9,5.3c-0.6,1.7-1.2,3.5-2.4,5.1 c-1.1,1.5-2.3,3.1-3.7,4.3c-1.4,1.2-3.3,2.3-5.3,3c-2.1,0.8-4.2,1.2-6.6,1.2c-3.6,0-7-1-10.2-3c0.4,0,1.1,0.1,1.5,0.1 c3.1,0,5.9-1,8.2-2.9c-1.4,0-2.7-0.4-3.8-1.3c-1.2-1-1.9-2-2.2-3.3c0.4,0.1,1,0.1,1.2,0.1c0.6,0,1.2-0.1,1.7-0.2 c-1.4-0.3-2.7-1.1-3.7-2.3s-1.4-2.6-1.4-4.2v-0.1c1,0.6,2,0.9,3,0.9c-1-0.6-1.5-1.3-2.2-2.4c-0.6-1-0.9-2.1-0.9-3.3s0.3-2.3,1-3.4 c1.5,2.1,3.6,3.6,6,4.9s4.9,2,7.6,2.1c-0.1-0.6-0.1-1.1-0.1-1.4c0-1.8,0.8-3.5,2-4.7c1.2-1.2,2.9-2,4.7-2c2,0,3.6,0.8,4.8,2.1 c1.4-0.3,2.9-0.9,4.2-1.5c-0.4,1.5-1.4,2.7-2.9,3.6C33.8,11.2,35.1,10.9,36.3,10.2L36.3,10.2z"/>
															</svg>
														</a>
														<span class="link-bar-separator">|</span>
														<a class="extraLinks" class="n03" href="https://patreon.com/HappyTrailsComic" role="button" style="color: #4F614E; padding-top: 4px;">
															<svg width="40" height="40" viewBox="0 0 40 40" fill="currentColor">
																<path d="M20.8,2c3.6,0.1,6.6,0.4,9.4,1.7c4.2,2,6.7,6,6.3,10c-0.5,4.8-3.5,8.3-8.2,9.6c-0.7,0.2-1.3,0.4-2,0.5 c-3.2,0.8-5.4,2.6-6.8,5.6c-0.9,2-1.9,4.1-3.1,5.9c-2.5,3.6-7.1,3.4-9.6-0.2c-1.6-2.3-2.2-4.9-2.6-7.6c-0.6-4.1-0.9-8.2-0.2-12.4 C5.1,7.8,9.6,3.4,17,2.4C18.4,2.2,19.9,2.1,20.8,2z"/>
															</svg>
														</a>
													</div>
													<div id="powered-by">
        Powered by <a id="powered-by-link" href="https://www.comic-git.com">comic_git</a> v{{ version }}
    </div>
{% endblock %}
{# This is the start of the `script` block. Most pages don't need any javascript, so by default it's blank, but some
   pages like infinite_scroll.tpl will fill this in with a <script> tag. #}
{% block script %}
{% endblock %}
<script>
document.addEventListener('DOMContentLoaded', () => {

  // Hamburger menu
  const hamburger = document.querySelector('.hamburger');
  const dropdown = document.getElementById('menu-dropdown');
  if (!hamburger || !dropdown) {
    console.error('Hamburger or dropdown not found!');
    return;
  }
  hamburger.addEventListener('click', () => {
    hamburger.classList.toggle('is-open');
    dropdown.classList.toggle('open');
  });

  // Banner click detection
  (function() {
  const bannerCanvas = document.createElement('canvas');
  const bannerCtx = bannerCanvas.getContext('2d');
  const bannerImg = document.getElementById('banner-img');
  const bannerLink = document.getElementById('banner-img-link');

  if (!bannerImg || !bannerLink) return;

  function setupBannerCanvas(img) {
    bannerCanvas.width = img.naturalWidth;
    bannerCanvas.height = img.naturalHeight;
    bannerCtx.drawImage(img, 0, 0);
  }

  const crossImg = new Image();
  crossImg.crossOrigin = 'anonymous';
  crossImg.onload = () => setupBannerCanvas(crossImg);
  crossImg.src = bannerImg.src;

	bannerLink.addEventListener('mousemove', (e) => {
		const rect = bannerImg.getBoundingClientRect();
		const scaleX = bannerImg.naturalWidth / rect.width;
		const scaleY = bannerImg.naturalHeight / rect.height;
		const x = (e.clientX - rect.left) * scaleX;
		const y = (e.clientY - rect.top) * scaleY;
		const alpha = bannerCtx.getImageData(x, y, 1, 1).data[3];
		if (alpha === 0) {
		bannerLink.style.cursor = 'default';
		bannerImg.style.opacity = '1';
		} else {
		bannerLink.style.cursor = 'pointer';
		bannerImg.style.opacity = '0.8';
		}
	});

	bannerLink.addEventListener('mouseleave', () => {
		bannerImg.style.opacity = '1';
	});

  bannerLink.addEventListener('click', (e) => {
    const rect = bannerImg.getBoundingClientRect();
    const scaleX = bannerImg.naturalWidth / rect.width;
    const scaleY = bannerImg.naturalHeight / rect.height;
    const x = (e.clientX - rect.left) * scaleX;
    const y = (e.clientY - rect.top) * scaleY;
    const alpha = bannerCtx.getImageData(x, y, 1, 1).data[3];
    if (alpha === 0) {
      e.preventDefault();
    }
  });
})();

});

 const comics = [
    { name: "happytrailsquestone", jsonUrl: "/happytrailsquestone/latest_comic.json", baseUrl: "/happytrailsquestone/comic/" },
    { name: "nightofthelustmoon", jsonUrl: "/nightofthelustmoon/latest_comic.json", baseUrl: "/nightofthelustmoon/comic/" },
	{ name: "sloppyspiel", jsonUrl: "/sloppyspiel/latest_comic.json", baseUrl: "/sloppyspiel/comic/" },
  ];

  window.latestComicUrl = null; // default until fetch resolves

  Promise.all(comics.map(c =>
    fetch(c.jsonUrl).then(res => res.json()).then(data => ({...data, ...c}))
  )).then(results => {
    results.sort((a, b) => new Date(b.post_date) - new Date(a.post_date));
    const mostRecent = results[0];
    window.latestComicUrl = mostRecent.baseUrl + mostRecent.page_name + "/#comic-page";
    document.dispatchEvent(new Event('latestComicReady'));
  }).catch(err => console.error("Fetch failed:", err));
</script>
													</body>
												</html>
