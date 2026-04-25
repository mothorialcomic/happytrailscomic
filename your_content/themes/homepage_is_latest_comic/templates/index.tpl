{% extends "base.tpl" %}
{%- block content %}

<div class="welcomeOne">
    <img title="" class="welcomeBanner" src="/happytrailscomic/your_content/images/welcomebanner.png">
    <p class="welcomeText">Happy Trails is a comic series about two fun-loving kinky campers! It's a silly little romp that explores different kinks from all over with a comfy attitude. Read my latest page, or dive into some previous comics of mine!</p>
    <p class="welcomeText">Have fun looking around, Camper!</p>
    <img class="regularHomeButtonComics comicsLink" src="/happytrailscomic/your_content/images/buttonshomeM.png" />
	<img class="hoverHomeButtonComics comicsLink" src="/happytrailscomic/your_content/images/buttonshomeMAlt.png" style="display:none;" />
    <img class="regularHomeButton latestLink" src="/happytrailscomic/your_content/images/buttonshomeS.png" />
	<img class="hoverHomeButton latestLink" src="/happytrailscomic/your_content/images/buttonshomeSAlt.png" style="display:none;" />
    <img title="" src="/happytrailscomic/your_content/images/18plus.png" class="ageRange">
</div>
<div class="aboutOne">
    <img title="" src="/happytrailscomic/your_content/images/aboutartist.png" class="aboutArtist">
	<img title="" src="/happytrailscomic/your_content/images/meicon.png" class="yeenMobile">
    <div style="padding-left: 10px; padding-right: 10px;">
        <p class="aboutText">Thanks for taking a look!<br>I'm plum, and I make this thing!</p>
        <p class="aboutText">A little about me, I love nature, the color green (if you can't tell) and making art!</p>
        <p class="aboutText">Happy Trails is my passion project, and I love working on it! If you like what you see, consider checking out the Patreon! You'll get early access to all this and more!</p>
    </div>
    <img title="" src="/happytrailscomic/your_content/images/patreonbutton.png" class="patreonButton">
    <img title="" src="/happytrailscomic/your_content/images/yeensite.png" class="yeen">
</div>
{%- endblock %}
{% block script %}
<script>
// Home Button
document.addEventListener('DOMContentLoaded', () => {
  (function() {
    const homeButtonCanvas = document.createElement('canvas');
    const homeButtonCtx = homeButtonCanvas.getContext('2d');
    const regularHomeButton = document.querySelector('.regularHomeButton');
    const hoverHomeButton = document.querySelector('.hoverHomeButton');

    function setupHomeButtonCanvas(img) {
      homeButtonCanvas.width = img.naturalWidth;
      homeButtonCanvas.height = img.naturalHeight;
      homeButtonCtx.drawImage(img, 0, 0);
    }

    regularHomeButton.onload = () => setupHomeButtonCanvas(regularHomeButton);
    if (regularHomeButton.complete) setupHomeButtonCanvas(regularHomeButton);

    function isOverOpaque(e, img) {
      const rect = img.getBoundingClientRect();
      const scaleX = img.naturalWidth / rect.width;
      const scaleY = img.naturalHeight / rect.height;
      const x = (e.clientX - rect.left) * scaleX;
      const y = (e.clientY - rect.top) * scaleY;
      return homeButtonCtx.getImageData(x, y, 1, 1).data[3] > 0;
    }

    regularHomeButton.addEventListener('mousemove', (e) => {
      if (isOverOpaque(e, regularHomeButton)) {
        regularHomeButton.style.cursor = 'pointer';
        regularHomeButton.style.display = 'none';
        hoverHomeButton.style.display = 'initial';
        setupHomeButtonCanvas(hoverHomeButton);
      } else {
        regularHomeButton.style.cursor = 'default';
      }
    });

    hoverHomeButton.addEventListener('mousemove', (e) => {
      if (isOverOpaque(e, hoverHomeButton)) {
        hoverHomeButton.style.cursor = 'pointer';
      } else {
        hoverHomeButton.style.cursor = 'default';
        hoverHomeButton.style.display = 'none';
        regularHomeButton.style.display = 'initial';
        setupHomeButtonCanvas(regularHomeButton);
      }
    });

    hoverHomeButton.addEventListener('mouseleave', () => {
      hoverHomeButton.style.display = 'none';
      hoverHomeButton.style.cursor = 'default';
      regularHomeButton.style.display = 'initial';
      setupHomeButtonCanvas(regularHomeButton);
    });
  })();
});

// Home Button Comics
document.addEventListener('DOMContentLoaded', () => {
  (function() {
    const homeButtonComicsCanvas = document.createElement('canvas');
    const homeButtonComicsCtx = homeButtonComicsCanvas.getContext('2d');
    const regularHomeButtonComics = document.querySelector('.regularHomeButtonComics');
    const hoverHomeButtonComics = document.querySelector('.hoverHomeButtonComics');

    function setupHomeButtonComicsCanvas(img) {
      homeButtonComicsCanvas.width = img.naturalWidth;
      homeButtonComicsCanvas.height = img.naturalHeight;
      homeButtonComicsCtx.drawImage(img, 0, 0);
    }

    regularHomeButtonComics.onload = () => setupHomeButtonComicsCanvas(regularHomeButtonComics);
    if (regularHomeButtonComics.complete) setupHomeButtonComicsCanvas(regularHomeButtonComics);

    function isOverOpaque(e, img) {
      const rect = img.getBoundingClientRect();
      const scaleX = img.naturalWidth / rect.width;
      const scaleY = img.naturalHeight / rect.height;
      const x = (e.clientX - rect.left) * scaleX;
      const y = (e.clientY - rect.top) * scaleY;
      return homeButtonComicsCtx.getImageData(x, y, 1, 1).data[3] > 0;
    }

    regularHomeButtonComics.addEventListener('mousemove', (e) => {
      if (isOverOpaque(e, regularHomeButtonComics)) {
        regularHomeButtonComics.style.cursor = 'pointer';
        regularHomeButtonComics.style.display = 'none';
        hoverHomeButtonComics.style.display = 'initial';
        setupHomeButtonComicsCanvas(hoverHomeButtonComics);
      } else {
        regularHomeButtonComics.style.cursor = 'default';
      }
    });

    hoverHomeButtonComics.addEventListener('mousemove', (e) => {
      if (isOverOpaque(e, hoverHomeButtonComics)) {
        hoverHomeButtonComics.style.cursor = 'pointer';
      } else {
        hoverHomeButtonComics.style.cursor = 'default';
        hoverHomeButtonComics.style.display = 'none';
        regularHomeButtonComics.style.display = 'initial';
        setupHomeButtonComicsCanvas(regularHomeButtonComics);
      }
    });

    hoverHomeButtonComics.addEventListener('mouseleave', () => {
      hoverHomeButtonComics.style.display = 'none';
      hoverHomeButtonComics.style.cursor = 'default';
      regularHomeButtonComics.style.display = 'initial';
      setupHomeButtonComicsCanvas(regularHomeButtonComics);
    });
	
	regularHomeButtonComics.addEventListener('click', (e) => {
      if (isOverOpaque(e, regularHomeButtonComics)) {
        window.location.href = '/happytrailscomic/happytrailsquestone/comics/';
      }
    });

    hoverHomeButtonComics.addEventListener('click', (e) => {
      if (isOverOpaque(e, hoverHomeButtonComics)) {
        window.location.href = '/happytrailscomic/happytrailsquestone/comics/';
      }
    });

  })();
});
</script>
{% endblock %}`