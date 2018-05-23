<%inherit file="bulma.mako"/>

## Rest is what goes in parent's <body> section (via self.body())

<section class="hero is-info">
  <div class="hero-body">
    <div class="container is-vcentered">
      <p class="title">
      <span class="icon is-large has-text-warning"><i class="fa fa-map-marker" aria-hidden="true"></i></span>
      Where is Nico?</p>
    </div>
  </div>
</section>
<figure class="image is-16by9">
        <img src="/images/content/waldo2.jpg" title="Waldo, by Shaojie Zhou (flickr)"/>
</figure>

<section class="section">
  <div class="timeline is-centered">
    <header class="timeline-header">
      <span class="tag is-medium">Mai 2018</span>
    </header>
    <div class="timeline-item">
      <div class="timeline-marker is-icon is-success">
        <i class="fa fa-glass-martini"></i>
      </div>
      <div class="timeline-content">
        <p class="heading">6 Mai</p>
        <p>Margarita &agrave; NYC</p>
      </div>
    </div>
    <div class="timeline-item">
      <div class="timeline-marker is-icon is-danger">
        <i class="fa fa-plane"></i>
      </div>
      <div class="timeline-content">
        <p class="heading has-text-success">25 Mai - 1er Juin</p>
        <p>Croatie - acro</p>
      </div>
    </div>
    <div class="timeline-item">
      <div class="timeline-marker is-icon is-danger">
        <i class="fa fa-plane"></i>
      </div>
      <div class="timeline-content">
        <p class="heading has-text-success">8 - 21 Juin</p>
        <p>Espagne - acro</p>
      </div>
    </div>
    <div class="timeline-item">
      <div class="timeline-marker is-icon is-warning">
        <i class="fa fa-fire"></i>
      </div>
      <div class="timeline-content">
        <p class="heading has-text-warning">22 - 23 Juin</p>
        <p><b>Maybe:</b> "Friendly gathering", aka mini-burn &agrave; c&ocirc;t&eacute; de Zurich.</p>
      </div>
    </div>
    <div class="timeline-item">
      <div class="timeline-marker is-icon is-info">
        <i class="fa fa-wine-glass"></i>
      </div>
      <div class="timeline-content">
        <p class="heading has-text-warning">21 - 27 Juillet</p>
		<p><b>Maybe:</b> Pre-mariage? Maison de vacances des parents d'un pote (<i>paye ton Suisse</i>), dans les vignes autour d'Orange</p>
      </div>
    </div>
    <div class="timeline-item">
      <div class="timeline-marker is-icon is-info">
        <i class="fa fa-frog"></i>
      </div>
      <div class="timeline-content">
        <p class="heading has-text-success">27 - 29 Juillet</p>
        <p>Mariage autour de Paris</p>
      </div>
    </div>
    <div class="timeline-item">
      <div class="timeline-marker is-icon is-warning">
        <i class="fa fa-fire"></i>
      </div>
      <div class="timeline-content">
        <p class="heading has-text-warning">Mi ao&ucirc;t - D&eacute;but septembre</p>
        <p><b>Maybe:</b> Burning man derni&egrave;re semaine d'ao&ucirc;t. Si j'y vais je suis en Californie (SF) avant</p>
      </div>
    </div>
    <div class="timeline-header">
      <span class="tag is-medium is-primary">Octobre 2019</span>
    </div>
  </div>
</section>

<section class="section has-background-warning">

<div class="columns is-centered">
<div class="notification has-text-centered column is-two-thirds is-info content">
Se croiseront-ils avant Octobre 2019? Le myst&egrave;re est entier! Il leur reste:
</div>
</div>

<div class="columns is-centered">
<nav class="level is-mobile column is-two-thirds" id="clockdiv">
<div class="level-item has-text-centered">
  <div>
    <p class="heading">Jours</p>
    <p class="title days">3456</p>
  </div>
</div>
<div class="level-item has-text-centered">
  <div>
    <p class="heading">Heures</p>
    <p class="title hours">123</p>
  </div>
</div>
<div class="level-item has-text-centered">
  <div>
    <p class="heading">Minutes</p>
    <p class="title minutes">456</p>
  </div>
</div>
<div class="level-item has-text-centered">
  <div>
    <p class="heading">Secondes</p>
    <p class="title seconds">789</p>
  </div>
</div>
</nav>
</div>

</section>

<script type="text/javascript">
function getTimeRemaining(endtime) {
  var t = (endtime - new Date())/1000;
  var seconds = Math.floor(t % 60);
  var minutes = Math.floor((t / 60) % 60);
  var hours = Math.floor((t / (60 * 60)) % 24);
  var days = Math.floor(t / (60 * 60 * 24));
  return {
    'total': t,
    'days': days,
    'hours': hours,
    'minutes': minutes,
    'seconds': seconds
  };
}

function initializeClock(id, endtime) {
  var clock = document.getElementById(id);
  var daysSpan = clock.querySelector('.days');
  var hoursSpan = clock.querySelector('.hours');
  var minutesSpan = clock.querySelector('.minutes');
  var secondsSpan = clock.querySelector('.seconds');

  function updateClock() {
    var t = getTimeRemaining(endtime);

    daysSpan.innerHTML = t.days;
    hoursSpan.innerHTML = ('0' + t.hours).slice(-2);
    minutesSpan.innerHTML = ('0' + t.minutes).slice(-2);
    secondsSpan.innerHTML = ('0' + t.seconds).slice(-2);

    if (t.total <= 0) {
      clearInterval(timeinterval);
    }
  }

  updateClock();
  var timeinterval = setInterval(updateClock, 1000);
}

document.addEventListener('DOMContentLoaded', function () {
  var deadline = Date.parse('01 Oct 2019 00:00:00 UTC +0100');
  initializeClock('clockdiv', deadline);
});
</script>
