<%inherit file="bulma.mako"/>

## Rest is what goes in parent's <body> section (via self.body())
<section class="hero is-info is-fullheight">
  <div class="hero-body">
    <div class="container content">
      <div class="columns">
        <div class=column>
          <p class="title is-1 is-bold">Nicolas Dumazet</p>
          <h2 class="subtitle code-font">a.k.a. nicdumz</h2>
        </div>
      </div>
      <div class="columns">
        <!-- spacer -->
        <div class="column is-two-thirds"></div>
        <div class="column">
          <a class="button is-outlined is-primary is-large code-font" href="#inside" title="Enter">self.__init__()</a>
        </div>
      </div>
      <!-- container -->
    </div>
    <!-- hero-body -->
  </div>
</section>

<section id="inside" class="hero is-fullheight">
  <section class="hero is-primary">
    <div class="hero-body">
      <div class="container is-vcentered">
            <p class="title">Yet another personal website</p>
            <p class="subtitle">Geeks build those all the time</p>
      </div>
    </div>
  </section>

  <section class="section is-medium">
    <div class="container">
      <div class="columns">
        <!-- spacer, only for long wide screens -->
        <div class="column is-1 is-hidden-mobile"></div>
        <div class="column content">
            <p>I used to live in busy Tokyo. Home is now Zürich, in the middle of the Swiss mountains.</p>

            <p>I work for Google. I spent quite some time with the team in charge of Search Infrastructure behind Image Search. That meant everything which needed to happen in order to serve content on <span class="code-font">images.google.com</span>, from crawling to indexing. My current team specializes in <a href="https://sre.google/books/">Reliability</a>. We run safely and reliably Security Infrastructure backends for Google Cloud and Google-internal applications.</p>

            <p>I invested quite some time in my early 20s caring for, and contributing to, Open Source software. Since the decline of <a class="is-link" href="http://www.ohloh.net/accounts/nicdumz">Ohloh</a>, there's no great way to showcase such involvement. My <span class="icon is-small"><i class="fas fa-briefcase" aria-hidden="true"></i></span> <a href="/resume-dumazet.pdf" title="Resume">resume</a> will tell you the gist of it, along with more of my professional background. </p>

            <p>Friends are likely to describe me as someone displaying a peculiar, dry, sarcastic sense of humor. So there's that. I mean, if something on here sounds strange, remember my warning: <em>&ldquo;it's not you, it's me&rdquo;</em>.</p>

            <p>Oh, and I'm French. Sorry. The only explanation I'll offer for that will come as a little story: I once happened to be waiting out a desert dust storm, philosophing on the meaning of life with a wise, and otherwise very pleasant old lady. Upon hearing of my origins, she commented: <em>nobody's perfect.</em></p>

            <p>There isn't much here, besides a desolated, neglected technical <span class="icon is-small"><i class="fas fa-paper-plane" aria-hidden="true"></i></span> <a class="is-link" href="/blog/">Blog</a>. Maintaining this site is mostly a nice excuse to force myself to read every other year about the latest web trends, though. Responsive. 2.0. All that jazz. Yay. Aren't we excited now.</p>
        </div>
      </div>
    </div>
  </section>
  <section class="section has-text-centered">
    <a class="button is-outlined is-info is-large is-hidden-mobile" href="#about">
      <span class="icon is-large">
        <i class="fas fa-arrow-down"></i>
      </span>
    </a>
  </section>
</section>

<section id="about" class="hero is-fullheight">
  <section class="hero is-primary">
    <div class="hero-body">
      <div class="container has-text-centered">
        <p class="title">Curious about things?</p>
        <p class="subtitle">I understand</p>
      </div>
    </div>
  </section>

  <section class="section is-medium">
    <div class="container">
      <div class="columns">
        <div class="column content">
            <ul>
                <li>
                    This website is hosted on <a href="https://www.digitalocean.com">Digital Ocean</a>.</li>
                <li>SSL
                    <span class="icon is-tiny"><i class="fas fa-quote-left" aria-hidden="true"></i></span>added and removed here<span class="icon is-tiny"><i class="fas fa-quote-right" aria-hidden="true"></i></span>
  for free, thanks to <a href="https://letsencrypt.org/">Let's Encrypt</a>.</li>
            <li>I believe in plain, static html pages when relevant, which is why this website is purely static. I don't necessarily need to handcraft every single page though, which is why I used a static site generator, <a href="/blog/2010/12/why-blogofile/">Blogofile</a>. Includes templating functionalities to avoid repeating yourself.</li>
            <li><a href="http://bulma.io">Bulma</a> CSS framework was of great help for layout and styling, since I have very poor UI skills.</li>
            <li>Source available on <a href="https://github.com/nicdumz/website" title="github repository">Github</a>.</li>
            <li>Content built using Free Software (Vim, Gimp, Inkscape, ...).</li>
            <li>Most of the content is available under Creative Commons-By 3.0, please check LICENSE.txt file in the source for details.</li>
            </ul>

        </div>
      </div>
    </div>
  </section>
  <section class="section has-text-centered">
    <a class="button is-outlined is-info is-large is-hidden-mobile" href="#contact">
      <span class="icon is-large">
        <i class="fas fa-arrow-down"></i>
      </span>
    </a>
  </section>
</section>


<section id="contact" class="hero is-fullheight">
<section class="hero is-info">
  <div class="hero-body">
    <div class="container has-text-right">
          <p class="title">Want to chat?</p>
          <p class="subtitle">Let's try, it can't be that bad</p>
    </div>
  </div>
</section>

<section class="section">
  <div class="container">

    <div class="columns is-vcentered">
      <div class="column has-text-centered">
        <img src="/images/nonfree/social-anxiety.gif" title="Actually, I'm really not that bad, but enjoyed the awkard times in that serie. A lot."/>
      </div>
    </div>
    <div class="columns is-vcentered is-mobile">
      <div class="column has-text-centered notification is-primary is-offset-one-quarter-desktop is-half-desktop is-one-third-tablet is-offset-one-third-tablet">
        Please, have some more of my sarcasm.
      </div>
    </div>

    <div class="columns has-text-centered">
      <div class="columns column is-offset-one-quarter-desktop is-half-desktop is-offset-one-third-tablet is-one-third-tablet">

        <div class="column columns is-mobile is-gapless">

          <div class="column">
            <a class="button is-medium" href="https://github.com/nicdumz" title="github profile">
            <span class=icon><i class="fab fa-github" aria-hidden="true"></i></span><span>GitHub</span>
            </a>
          </div><div class="column">
            <a class="button is-medium" href="https://linkedin.com/in/ndumazet" title="linkedin profile">
            <span class=icon><i class="fab fa-linkedin" aria-hidden="true"></i></span><span>linkedin</span>
            </a>
          </div>

        </div><div class="column columns is-mobile is-gapless">

          <div class="column">
            <a class="button is-medium" href="mailto:nicdumz@gmail.com" title="email">
            <span class=icon><i class="fas fa-envelope" aria-hidden="true"></i></span><span>email</span>
            </a>
          </div>

        </div>

      </div>
    </div>
  </div>
</section>
<section></section>
</section>
