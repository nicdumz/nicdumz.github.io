<!DOCTYPE html>
<html>
<%include file="bulma_header.mako" args="title='Nicolas Dumazet'"/>
  <body>
    <script type="text/javascript" async src="/js/analytics.js"></script>

<%include file="navbar.mako" args="active_section='home'"/>

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
              <p>I used to live in busy Tokyo. Home is now Zurich, in the middle of the Swiss mountains.</p>

              <p>I work for Google. I spent quite some time with the team in charge of Search Infrastructure behind Image Search. That meant everything which needed to happen in order to serve content on <span class="code-font">images.google.com</span>, from crawling to indexing. I've now moved to another indexing team, still within Search. Still working in Infrastructure.</p>

              <p>I invested quite some time in my early 20s caring for, and contributing to, Open Source software. Since the decline of <a class="is-link" href="http://www.ohloh.net/accounts/nicdumz">Ohloh</a>, there's no great way to showcase such involvement. My <a href="/resume-dumazet.pdf" title="Resume">resume</a> will tell you the gist of it, along with more of my professional background. </p>

              <p>Friends are likely to describe me as someone displaying a peculiar, dry, sarcastic sense of humor. So there's that. I mean, if something on here sounds strange, remember my warning: <em>&ldquo;it's not you, it's me&rdquo;</em>.</p>

              <p>Oh, and I'm French. Sorry. The only explanation I'll offer for that will come as a little story: I once happened to be waiting out a desert dust storm, philosophing on the meaning of life with a wise, and otherwise very pleasant old lady. Upon hearing of my origins, she commented: <em>nobody's perfect.</em></p>

              <p>There isn't much here, besides a desolated, neglected technical Blog. Maintaining this site is mostly a nice excuse to force myself to read every other year about the latest web trends, though. Responsive. 2.0. All that jazz. Yay. Aren't we excited now.</p>
          </div>
        </div>
      </div>
    </section>
  </body>
</html>
