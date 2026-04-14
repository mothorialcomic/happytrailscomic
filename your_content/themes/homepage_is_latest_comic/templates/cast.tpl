{# This template extends the base.tpl template, meaning that base.tpl provides a large framework
   that this template then adds to. See base.tpl for more information. #}
{% extends "base.tpl" %}
{# This is the start of the `content` block. It's part of the <body> of the page. This is where all the visible
   parts of the website after the links bar and before the "Powered by comic_git" footer go. #}
{% block content %}
	<header class="post-header">        
<div id="overlay" onclick="document.getElementById('descriptionMaple').style.visibility = 'hidden'; document.getElementById('descriptionSyrup').style.visibility = 'hidden'; document.getElementById('descriptionBarry').style.visibility = 'hidden'; document.getElementById('descriptionBrie').style.visibility = 'hidden'; document.getElementById('descriptionMapleMobile').style.visibility = 'hidden'; document.getElementById('descriptionSyrupMobile').style.visibility = 'hidden'; document.getElementById('descriptionBarryMobile').style.visibility = 'hidden'; document.getElementById('descriptionBrieMobile').style.visibility = 'hidden'; document.getElementById('overlay').style.visibility = 'hidden';"></div>

<div id="descriptionMapleMobile" class="castMobile" style="visibility: hidden;">
	<div class="popupMobile">
		<div>
			<img src="/happytrailscomic/your_content/images/mapletext.png" class="mapleText" style="margin-left: 0px;">
			<p class="characterDetails" style="margin-left: 0px;font-size: 18px;margin-top: 10px;text-align: center;">Cocker spaniel</p>
			<p class="characterDetails" style="margin-left: 0px;font-size: 18px;text-align: center;">28 • F (she/her)</p>
		</div>
		<article id="post-body" style="top: 0px;position: relative;font-family: &quot;Fredoka&quot;, sans-serif;font-size: 18px;margin-left: 30px;margin-right: 30px;">
			<p>Maple is a former fitness coach who ran a hiking club after hours! She came to really love the outdoors and its beauty, and quit her job to pursue an easy living in the local National Park. Using the last of her cash, she bought an RV and renovated it.She loves good handiwork, and she has the resolve to attempt high stakes tasks and see them through.</p>
			<p>Maple loves the smell of fresh rain on grass, the feeling of rough tree bark, and the taste of a freshly foraged mushroom (checked for safety, of course!).</p>
			<p>What might have started off with pure intentions ends when she meets Syrup, her now long term partner!</p>
		</article>
		<img id="regularMapleMobile" class="portraitMaple bouncing" src="/happytrailscomic/your_content/images/castpage/maple.png">
		<img id="secretMapleMobile" class="portraitMaple bouncing" src="/happytrailscomic/your_content/images/castpage/maplenude.png" style="display: none;">	
	</div>
	<button class="close-btn" onclick="document.getElementById('descriptionMapleMobile').style.visibility = 'hidden'; document.getElementById('descriptionMaple').style.visibility = 'hidden'; document.getElementById('overlay').style.visibility = 'hidden';">CLOSE</button>
</div>
<div id="descriptionSyrupMobile" class="castMobile" style="visibility: hidden;">
	<div class="popupMobile">
		<div>
			<img src="/happytrailscomic/your_content/images/syruptext.png" class="syrupText" style="margin-left: 0px;">
			<p class="characterDetails" style="margin-left: 0px;font-size: 18px;margin-top: 10px;text-align: center;">Calico</p>
			<p class="characterDetails" style="margin-left: 0px;font-size: 18px;text-align: center;">25 • M (he/him)</p>
		</div>
		<article id="post-body" style="top: 0px;position: relative;font-family: &quot;Fredoka&quot;, sans-serif;font-size: 18px;margin-left: 30px;margin-right: 30px;">
			<p>Syrup is a former botanist who loves documenting the world around him. He's big on journaling, photography, and writing. He'd venture out into the park for new photos to take, and camping and hiking became second nature. He loves space and astronomy as well, and being outside gives him plenty to look at at night.</p>
			<p>For him, being out in nature is a meditative experience, and he looks forward to spending time outside.</p>
			<p> When he meets Maple, he's in the midst of a crucial career pivot, and after some time, smitten by her optimistic attitude, decides to forgo it all and spend time with someone he loves out in the place he knows. He might have gotten... a little distracted though.</p>
		</article>
		<img id="regularSyrupMobile" class="portraitSyrup bouncing" src="/happytrailscomic/your_content/images/castpage/syrup.png">
		<img id="secretSyrupMobile" class="portraitSyrup bouncing" src="/happytrailscomic/your_content/images/castpage/syrupnude.png" style="display: none;">	
	</div>
	<button class="close-btn" onclick="document.getElementById('descriptionSyrupMobile').style.visibility = 'hidden'; document.getElementById('descriptionSyrup').style.visibility = 'hidden'; document.getElementById('overlay').style.visibility = 'hidden';">CLOSE</button>
</div>
<div id="descriptionBrieMobile" class="castMobile" style="visibility: hidden;">
	<div class="popupMobile">
		<div>
			<img src="/happytrailscomic/your_content/images/brietext.png" class="brieText" style="margin-left: 0px;">
			<p class="characterDetails" style="margin-left: 0px;font-size: 18px;margin-top: 10px;text-align: center;">Reindeer</p>
			<p class="characterDetails" style="margin-left: 0px;font-size: 18px;text-align: center;">33 • F (she/her)</p>
		</div>
		<article id="post-body" style="top: 0px;position: relative;font-family: &quot;Fredoka&quot;, sans-serif;font-size: 18px;margin-left: 30px;margin-right: 30px;">
			<p>Brie is a new park ranger and police officer who honestly, doesn’t care much for nature. As punishment for her hotheaded attitude, she’s over at Happy Trails for a season or two (or however long she needs to be)!</p>
			<p>This was… supposed to be a temporary situation. She values structure and following the rules, and when it comes to being a ranger, it’s the structure she craves! Even so, she hates the fact Maple and Syrup break the rules and get away with it so often. Not to mention that there seems to be something…off about the park that seems to make everyone a little pent up.</p>
			<p>Her relationship with Barry is strained and tense. For some strange reason Barry lets people off with a warning more than she’d say is acceptable. They both have different ways they want to run the park that don’t mesh well together.</p>
		</article>
		<img id="regularBrieMobile" class="portraitBrie bouncing" src="/happytrailscomic/your_content/images/castpage/brie.png">
		<img id="secretBrieMobile" class="portraitBrie bouncing" src="/happytrailscomic/your_content/images/castpage/brienude.png" style="display: none;">	
	</div>
	<button class="close-btn" onclick="document.getElementById('descriptionBrieMobile').style.visibility = 'hidden'; document.getElementById('descriptionBrie').style.visibility = 'hidden'; document.getElementById('overlay').style.visibility = 'hidden';">CLOSE</button>
</div>
<div id="descriptionBarryMobile" class="castMobile" style="visibility: hidden;">
	<div class="popupMobile">
		<div>
			<img src="/happytrailscomic/your_content/images/barrytext.png" class="barryText" style="margin-left: 0px;">
			<p class="characterDetails" style="margin-left: 0px;font-size: 18px;margin-top: 10px;text-align: center;">Gray Wolf</p>
			<p class="characterDetails" style="margin-left: 0px;font-size: 18px;text-align: center;">47 • M (he/him)</p>
		</div>
		<article id="post-body" style="top: 0px;position: relative;font-family: &quot;Fredoka&quot;, sans-serif;font-size: 18px;margin-left: 30px;margin-right: 30px;">
			<p>Barry is a long time park ranger, having served as one for over 20 years. He's serious about his work, and loves nature and the outdoors dearly. He works to maintain the natural beauty of the park around him, and doesn't take well to folks defacing the park or messing with wildlife.</p>
			<p>He knows about the odd quality of the park, but it hasn't affected him for a long time. He's got a past shrouded in mystery, and doesn't let people get too close to him. He keeps to himself. As long as there's peace and quiet, he's letting it be.</p>
			<p>He may not look it, but the hard exterior is just that. He's awfully lenient to folks who do nothing more than enjoy themselves in the park. Because of this, him and Brie clash often.</p>
		</article>
		<img id="regularBarryMobile" class="portraitBarry bouncing" src="/happytrailscomic/your_content/images/castpage/barry.png">
		<img id="secretBarryMobile" class="portraitBarry bouncing" src="/happytrailscomic/your_content/images/castpage/barrynude.png" style="display: none;">	
	</div>
	<button class="close-btn" onclick="document.getElementById('descriptionBarryMobile').style.visibility = 'hidden'; document.getElementById('descriptionBarry').style.visibility = 'hidden'; document.getElementById('overlay').style.visibility = 'hidden';">CLOSE</button>
</div>

<div id="descriptionMaple">
  <div class="characterBox" style="display: flex;  gap: 12px;align-items: flex-start;margin-top: 10px;margin-left: 5px;">
			<img id="regularMaple" class="characterPortrait portraitMaple bouncing" src="/happytrailscomic/your_content/images/castpage/maple.png">
			<img id="secretMaple" class="characterPortrait portraitMaple bouncing" src="/happytrailscomic/your_content/images/castpage/maplenude.png" style="display: none; cursor: pointer;">
			<div style="margin: 20px;text-align: left;margin-left: 10px;">
			<img src="/happytrailscomic/your_content/images/mapletext.png" class="mapleText">
			<p class="characterDetails">Cocker spaniel</p><p class="characterDetails">28 • F (she/her)</p><article id="post-body">
				<p>Maple is a former fitness coach who ran a hiking club after hours! She came to really love the outdoors and its beauty, and quit her job to pursue an easy living in the local National Park. Using the last of her cash, she bought an RV and renovated it.She loves good handiwork, and she has the resolve to attempt high stakes tasks and see them through.</p><p>Maple loves the smell of fresh rain on grass, the feeling of rough tree bark, and the taste of a freshly foraged mushroom (checked for safety, of course!).</p><p>What might have started off with pure intentions ends when she meets Syrup, her now long term partner!</p>

			</article></div>
			</div>
		<div>
	</div>
</div>
<div id="descriptionSyrup">
  <div class="characterBox" style="display: flex;  gap: 12px;align-items: flex-start;margin-top: 10px;margin-left: 5px;">
			<div style="margin: 20px;text-align: left;">
			<img class="syrupText" src="/happytrailscomic/your_content/images/syruptext.png">
			<p class="characterDetails">Calico</p><p class="characterDetails">25 • M (he/him)</p><p>Syrup is a former botanist who loves documenting the world around him. He's big on journaling, photography, and writing. He'd venture out into the park for new photos to take, and camping and hiking became second nature. He loves space and astronomy as well, and being outside gives him plenty to look at at night.</p><article id="post-body">
				<p>For him, being out in nature is a meditative experience, and he looks forward to spending time outside.</p><p> When he meets Maple, he's in the midst of a crucial career pivot, and after some time, smitten by her optimistic attitude, decides to forgo it all and spend time with someone he loves out in the place he knows. He might have gotten... a little distracted though.</p>

			</article></div>
			<img id="regularSyrup" class="characterPortrait portraitSyrup" src="/happytrailscomic/your_content/images/castpage/syrup.png" style="cursor: pointer;">
<img id="secretSyrup" class="characterPortrait portraitSyrup" src="/happytrailscomic/your_content/images/castpage/syrupnude.png" style="display: none; cursor: pointer;">
		</div>
		<div>
	</div>
</div>
<div id="descriptionBrie">
  <div class="characterBox" style="display: flex;  gap: 12px;align-items: flex-start;margin-top: 10px;margin-left: 5px;">
			<img src="/happytrailscomic/your_content/images/castpage/brie.png" id="regularBrie" class="characterPortrait portraitBrie bouncing">
			<img id="secretBrie" class="characterPortrait portraitMaple bouncing" style="display: none; cursor: pointer;" src="/happytrailscomic/your_content/images/castpage/brienude.png">
			<div style="margin: 20px;text-align: left;"><img class="brieText" src="/happytrailscomic/your_content/images/brietxt.png"><p class="characterDetails">Reindeer</p><p class="characterDetails">33 • F (she/her)</p><p></p>Brie is a new park ranger and police officer who honestly, doesn’t care much for nature. As punishment for her hotheaded attitude, she’s over at Happy Trails for a season or two (or however long she needs to be)! <article id="post-body">
				<p>This was… supposed to be a temporary situation. She values structure and following the rules, and when it comes to being a ranger, it’s the structure she craves! Even so, she hates the fact Maple and Syrup break the rules and get away with it so often. Not to mention that there seems to be something…off about the park that seems to make everyone a little pent up.</p><p>Her relationship with Barry is strained and tense. For some strange reason Barry lets people off with a warning more than she’d say is acceptable. They both have different ways they want to run the park that don’t mesh well together.</p>

			</article></div>
			</div>
		<div>
	</div>
</div>
<div id="descriptionBarry">
  <div class="characterBox" style="display: flex;  gap: 12px;align-items: flex-start;margin-top: 10px;margin-left: 5px;">
			<div>
			<div style="margin: 20px;text-align: left;"><img src="/happytrailscomic/your_content/images/barrytxt.png" class="barryText"><p class="characterDetails">Gray Wolf</p><p class="characterDetails">47 • M (he/him)</p><article id="post-body">
				<p>Barry is a long time park ranger, having served as one for over 20 years. He's serious about his work, and loves nature and the outdoors dearly. He works to maintain the natural beauty of the park around him, and doesn't take well to folks defacing the park or messing with wildlife.</p><p>He knows about the odd quality of the park, but it hasn't affected him for a long time. He's got a past shrouded in mystery, and doesn't let people get too close to him. He keeps to himself. As long as there's peace and quiet, he's letting it be.</p><p>He may not look it, but the hard exterior is just that. He's awfully lenient to folks who do nothing more than enjoy themselves in the park. Because of this, him and Brie clash often.</p>

			</article></div>
			
		</div>
			<img class="characterPortrait portraitSyrup bouncing" style="cursor: pointer; display: block;" id="regularBarry" src="/happytrailscomic/your_content/images/castpage/barry.png">
<img class="characterPortrait portraitSyrup bouncing" style="display: none; cursor: pointer;" id="secretBarry" src="/happytrailscomic/your_content/images/castpage/barrynude.png">
		</div>
		<div>
	</div>
</div>
<img src="/happytrailscomic/your_content/images/charas.png" style="width: 60%;max-width: 400px;margin-bottom: 10px;">
<div class="bulletinBoard">
  
<img src="/happytrailscomic/your_content/images/castpage/Maplepin.png" class="pinOne">
<img onclick="document.getElementById('descriptionMaple').style.visibility = 'visible'; document.getElementById('overlay').style.visibility = 'visible'; document.getElementById('descriptionMapleMobile').style.visibility = 'visible'; " src="/happytrailscomic/your_content/images/castpage/maplepolaroid.png" class="polaroid polaroidMaple">
<img src="/happytrailscomic/your_content/images/castpage/SyrupPin.png" class="pinTwo">
<img onclick="document.getElementById('descriptionSyrup').style.visibility = 'visible'; document.getElementById('overlay').style.visibility = 'visible'; document.getElementById('descriptionSyrupMobile').style.visibility = 'visible'; " class="polaroid polaroidSyrup" src="/happytrailscomic/your_content/images/castpage/syruppolaroid.png">
<img src="/happytrailscomic/your_content/images/castpage/bandbpin.png" class="pinThree">
<img onclick="document.getElementById('descriptionBrie').style.visibility = 'visible'; document.getElementById('overlay').style.visibility = 'visible'; document.getElementById('descriptionBrieMobile').style.visibility = 'visible'; " class="polaroid polaroidBrie" src="/happytrailscomic/your_content/images/castpage/briepolaroid.png">
<img src="/happytrailscomic/your_content/images/castpage/bandbpin.png" class="pinFour">
<img onclick="document.getElementById('descriptionBarry').style.visibility = 'visible'; document.getElementById('overlay').style.visibility = 'visible'; document.getElementById('descriptionBarryMobile').style.visibility = 'visible'; " class="polaroid polaroidBarry" src="/happytrailscomic/your_content/images/castpage/barrypolaroid.png">
	<img class="badge" style="width: 130px;position: relative;transform: rotate(14deg);top: -1310px;left: 60px;" src="/happytrailscomic/your_content/images/ufobadge.png">
	<img class="badge" style="width: 130px;position: relative;transform: rotate(14deg);top: -1440px;left: 500px;" src="/happytrailscomic/your_content/images/flowerbadge.png">
	<img class="badge" style="width: 160px;position: relative;transform: rotate(4deg);top: -1570px;left: 760px;" src="/happytrailscomic/your_content/images/earthbadge.png">
	<img class="badge" style="width: 170px;position: relative;transform: rotate(4deg);top: -1330px;left: 10px;" src="/happytrailscomic/your_content/images/cryptidseekerbadge.png">
	<img class="badge" style="width: 110px;position: relative;transform: rotate(-13deg);top: -1460px;left: 330px;" src="/happytrailscomic/your_content/images/nessiebadge.png">
	<img class="badge" style="width: 118px;position: relative;transform: rotate(5deg);top: -1500px;left: 500px;" src="/happytrailscomic/your_content/images/cedarbadge.png">
	<img class="badge" style="width: 136px;position: relative;transform: rotate(14deg);top: -1650px;left: 770px;" src="/happytrailscomic/your_content/images/saplingbadge.png">
	<img class="badge" style="width: 140px;position: relative;transform: rotate(7deg);top: -1350px;left: 140px;" src="/happytrailscomic/your_content/images/redwoodbadge.png">
	<img class="badge" style="width: 120px;position: relative;transform: rotate(-10deg);top: -1470px;left: 400px;" src="/happytrailscomic/your_content/images/oakbadge.png">
</div>
    </header>
{% endblock %}
{% block script %}
<script>
// Syrup
(function() {
  const syrupCanvas = document.createElement('canvas');
  const syrupCtx = syrupCanvas.getContext('2d');
  const regularSyrup = document.getElementById('regularSyrup');
  const secretSyrup = document.getElementById('secretSyrup');

  function setupSyrupCanvas(img) {
    syrupCanvas.width = img.naturalWidth;
    syrupCanvas.height = img.naturalHeight;
    syrupCtx.drawImage(img, 0, 0);
  }

  regularSyrup.onload = () => setupSyrupCanvas(regularSyrup);
  if (regularSyrup.complete) setupSyrupCanvas(regularSyrup);

  function handleSyrupClick(e, clickedImg, otherImg) {
    const rect = clickedImg.getBoundingClientRect();
    const scaleX = clickedImg.naturalWidth / rect.width;
    const scaleY = clickedImg.naturalHeight / rect.height;
    const x = (e.clientX - rect.left) * scaleX;
    const y = (e.clientY - rect.top) * scaleY;
    const alpha = syrupCtx.getImageData(x, y, 1, 1).data[3];
    if (alpha > 0) {
      clickedImg.style.display = 'none';
      otherImg.style.display = 'block';
      setupSyrupCanvas(otherImg);
      otherImg.classList.remove('bouncing');
      void otherImg.offsetWidth;
      otherImg.classList.add('bouncing');
    }
  }

  regularSyrup.addEventListener('click', (e) => handleSyrupClick(e, regularSyrup, secretSyrup));
  secretSyrup.addEventListener('click', (e) => handleSyrupClick(e, secretSyrup, regularSyrup));
})();

// Maple
(function() {
  const mapleCanvas = document.createElement('canvas');
  const mapleCtx = mapleCanvas.getContext('2d');
  const regularMaple = document.getElementById('regularMaple');
  const secretMaple = document.getElementById('secretMaple');

  function setupMapleCanvas(img) {
    mapleCanvas.width = img.naturalWidth;
    mapleCanvas.height = img.naturalHeight;
    mapleCtx.drawImage(img, 0, 0);
  }

  regularMaple.onload = () => setupMapleCanvas(regularMaple);
  if (regularMaple.complete) setupMapleCanvas(regularMaple);

  function handleMapleClick(e, clickedImg, otherImg) {
    const rect = clickedImg.getBoundingClientRect();
    const scaleX = clickedImg.naturalWidth / rect.width;
    const scaleY = clickedImg.naturalHeight / rect.height;
    const x = (e.clientX - rect.left) * scaleX;
    const y = (e.clientY - rect.top) * scaleY;
    const alpha = mapleCtx.getImageData(x, y, 1, 1).data[3];
    if (alpha > 0) {
      clickedImg.style.display = 'none';
      otherImg.style.display = 'initial';
      setupMapleCanvas(otherImg);
      otherImg.classList.remove('bouncing');
      void otherImg.offsetWidth;
      otherImg.classList.add('bouncing');
    }
  }

  regularMaple.addEventListener('click', (e) => handleMapleClick(e, regularMaple, secretMaple));
  secretMaple.addEventListener('click', (e) => handleMapleClick(e, secretMaple, regularMaple));
})();

// Barry
(function() {
  const barryCanvas = document.createElement('canvas');
  const barryCtx = barryCanvas.getContext('2d');
  const regularBarry = document.getElementById('regularBarry');
  const secretBarry = document.getElementById('secretBarry');

  function setupBarryCanvas(img) {
    barryCanvas.width = img.naturalWidth;
    barryCanvas.height = img.naturalHeight;
    barryCtx.drawImage(img, 0, 0);
  }

  regularBarry.onload = () => setupBarryCanvas(regularBarry);
  if (regularBarry.complete) setupBarryCanvas(regularBarry);

  function handleBarryClick(e, clickedImg, otherImg) {
    const rect = clickedImg.getBoundingClientRect();
    const scaleX = clickedImg.naturalWidth / rect.width;
    const scaleY = clickedImg.naturalHeight / rect.height;
    const x = (e.clientX - rect.left) * scaleX;
    const y = (e.clientY - rect.top) * scaleY;
    const alpha = barryCtx.getImageData(x, y, 1, 1).data[3];
    if (alpha > 0) {
      clickedImg.style.display = 'none';
      otherImg.style.display = 'initial';
      setupBarryCanvas(otherImg);
      otherImg.classList.remove('bouncing');
      void otherImg.offsetWidth;
      otherImg.classList.add('bouncing');
    }
  }

  regularBarry.addEventListener('click', (e) => handleBarryClick(e, regularBarry, secretBarry));
  secretBarry.addEventListener('click', (e) => handleBarryClick(e, secretBarry, regularBarry));
})();

// Brie
(function() {
  const brieCanvas = document.createElement('canvas');
  const brieCtx = brieCanvas.getContext('2d');
  const regularBrie = document.getElementById('regularBrie');
  const secretBrie = document.getElementById('secretBrie');

  function setupBrieCanvas(img) {
    brieCanvas.width = img.naturalWidth;
    brieCanvas.height = img.naturalHeight;
    brieCtx.drawImage(img, 0, 0);
  }

  regularBrie.onload = () => setupBrieCanvas(regularBrie);
  if (regularBrie.complete) setupBrieCanvas(regularBrie);

  function handleBrieClick(e, clickedImg, otherImg) {
    const rect = clickedImg.getBoundingClientRect();
    const scaleX = clickedImg.naturalWidth / rect.width;
    const scaleY = clickedImg.naturalHeight / rect.height;
    const x = (e.clientX - rect.left) * scaleX;
    const y = (e.clientY - rect.top) * scaleY;
    const alpha = brieCtx.getImageData(x, y, 1, 1).data[3];
    if (alpha > 0) {
      clickedImg.style.display = 'none';
      otherImg.style.display = 'initial';
      setupBrieCanvas(otherImg);
      otherImg.classList.remove('bouncing');
      void otherImg.offsetWidth;
      otherImg.classList.add('bouncing');
    }
  }

  regularBrie.addEventListener('click', (e) => handleBrieClick(e, regularBrie, secretBrie));
  secretBrie.addEventListener('click', (e) => handleBrieClick(e, secretBrie, regularBrie));
})();

// Syrup Mobile
(function() {
  const syrupMobileCanvas = document.createElement('canvas');
  const syrupMobileCtx = syrupMobileCanvas.getContext('2d');
  const regularSyrupMobile = document.getElementById('regularSyrupMobile');
  const secretSyrupMobile = document.getElementById('secretSyrupMobile');

  function setupSyrupMobileCanvas(img) {
    syrupMobileCanvas.width = img.naturalWidth;
    syrupMobileCanvas.height = img.naturalHeight;
    syrupMobileCtx.drawImage(img, 0, 0);
  }

  regularSyrupMobile.onload = () => setupSyrupMobileCanvas(regularSyrupMobile);
  if (regularSyrupMobile.complete) setupSyrupMobileCanvas(regularSyrupMobile);

  function handleSyrupMobileClick(e, clickedImg, otherImg) {
    const rect = clickedImg.getBoundingClientRect();
    const scaleX = clickedImg.naturalWidth / rect.width;
    const scaleY = clickedImg.naturalHeight / rect.height;
    const x = (e.clientX - rect.left) * scaleX;
    const y = (e.clientY - rect.top) * scaleY;
    const alpha = syrupMobileCtx.getImageData(x, y, 1, 1).data[3];
    if (alpha > 0) {
      clickedImg.style.display = 'none';
      otherImg.style.display = 'block';
      setupSyrupMobileCanvas(otherImg);
      otherImg.classList.remove('bouncing');
      void otherImg.offsetWidth;
      otherImg.classList.add('bouncing');
    }
  }

  regularSyrupMobile.addEventListener('click', (e) => handleSyrupMobileClick(e, regularSyrupMobile, secretSyrupMobile));
  secretSyrupMobile.addEventListener('click', (e) => handleSyrupMobileClick(e, secretSyrupMobile, regularSyrupMobile));
})();

// Maple Mobile
(function() {
  const mapleMobileCanvas = document.createElement('canvas');
  const mapleMobileCtx = mapleMobileCanvas.getContext('2d');
  const regularMapleMobile = document.getElementById('regularMapleMobile');
  const secretMapleMobile = document.getElementById('secretMapleMobile');

  function setupMapleMobileCanvas(img) {
    mapleMobileCanvas.width = img.naturalWidth;
    mapleMobileCanvas.height = img.naturalHeight;
    mapleMobileCtx.drawImage(img, 0, 0);
  }

  regularMapleMobile.onload = () => setupMapleMobileCanvas(regularMapleMobile);
  if (regularMapleMobile.complete) setupMapleMobileCanvas(regularMapleMobile);

  function handleMapleMobileClick(e, clickedImg, otherImg) {
    const rect = clickedImg.getBoundingClientRect();
    const scaleX = clickedImg.naturalWidth / rect.width;
    const scaleY = clickedImg.naturalHeight / rect.height;
    const x = (e.clientX - rect.left) * scaleX;
    const y = (e.clientY - rect.top) * scaleY;
    const alpha = mapleMobileCtx.getImageData(x, y, 1, 1).data[3];
    if (alpha > 0) {
      clickedImg.style.display = 'none';
      otherImg.style.display = 'initial';
      setupMapleMobileCanvas(otherImg);
      otherImg.classList.remove('bouncing');
      void otherImg.offsetWidth;
      otherImg.classList.add('bouncing');
    }
  }

  regularMapleMobile.addEventListener('click', (e) => handleMapleMobileClick(e, regularMapleMobile, secretMapleMobile));
  secretMapleMobile.addEventListener('click', (e) => handleMapleMobileClick(e, secretMapleMobile, regularMapleMobile));
})();

// Barry Mobile
(function() {
  const barryMobileCanvas = document.createElement('canvas');
  const barryMobileCtx = barryMobileCanvas.getContext('2d');
  const regularBarryMobile = document.getElementById('regularBarryMobile');
  const secretBarryMobile = document.getElementById('secretBarryMobile');

  function setupBarryMobileCanvas(img) {
    barryMobileCanvas.width = img.naturalWidth;
    barryMobileCanvas.height = img.naturalHeight;
    barryMobileCtx.drawImage(img, 0, 0);
  }

  regularBarryMobile.onload = () => setupBarryMobileCanvas(regularBarryMobile);
  if (regularBarryMobile.complete) setupBarryMobileCanvas(regularBarryMobile);

  function handleBarryMobileClick(e, clickedImg, otherImg) {
    const rect = clickedImg.getBoundingClientRect();
    const scaleX = clickedImg.naturalWidth / rect.width;
    const scaleY = clickedImg.naturalHeight / rect.height;
    const x = (e.clientX - rect.left) * scaleX;
    const y = (e.clientY - rect.top) * scaleY;
    const alpha = barryMobileCtx.getImageData(x, y, 1, 1).data[3];
    if (alpha > 0) {
      clickedImg.style.display = 'none';
      otherImg.style.display = 'initial';
      setupBarryMobileCanvas(otherImg);
      otherImg.classList.remove('bouncing');
      void otherImg.offsetWidth;
      otherImg.classList.add('bouncing');
    }
  }

  regularBarryMobile.addEventListener('click', (e) => handleBarryMobileClick(e, regularBarryMobile, secretBarryMobile));
  secretBarryMobile.addEventListener('click', (e) => handleBarryMobileClick(e, secretBarryMobile, regularBarryMobile));
})();

// Brie Mobile
(function() {
  const brieMobileCanvas = document.createElement('canvas');
  const brieMobileCtx = brieMobileCanvas.getContext('2d');
  const regularBrieMobile = document.getElementById('regularBrieMobile');
  const secretBrieMobile = document.getElementById('secretBrieMobile');

  function setupBrieMobileCanvas(img) {
    brieMobileCanvas.width = img.naturalWidth;
    brieMobileCanvas.height = img.naturalHeight;
    brieMobileCtx.drawImage(img, 0, 0);
  }

  regularBrieMobile.onload = () => setupBrieMobileCanvas(regularBrieMobile);
  if (regularBrieMobile.complete) setupBrieMobileCanvas(regularBrieMobile);

  function handleBrieMobileClick(e, clickedImg, otherImg) {
    const rect = clickedImg.getBoundingClientRect();
    const scaleX = clickedImg.naturalWidth / rect.width;
    const scaleY = clickedImg.naturalHeight / rect.height;
    const x = (e.clientX - rect.left) * scaleX;
    const y = (e.clientY - rect.top) * scaleY;
    const alpha = brieMobileCtx.getImageData(x, y, 1, 1).data[3];
    if (alpha > 0) {
      clickedImg.style.display = 'none';
      otherImg.style.display = 'initial';
      setupBrieMobileCanvas(otherImg);
      otherImg.classList.remove('bouncing');
      void otherImg.offsetWidth;
      otherImg.classList.add('bouncing');
    }
  }

  regularBrieMobile.addEventListener('click', (e) => handleBrieMobileClick(e, regularBrieMobile, secretBrieMobile));
  secretBrieMobile.addEventListener('click', (e) => handleBrieMobileClick(e, secretBrieMobile, regularBrieMobile));
})();
</script>
{% endblock %}`