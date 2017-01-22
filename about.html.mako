<%inherit file="bulma_and_top_nav.mako"/>

## Extend parent head.
<%block name="head">
${parent.head()}
 <script src="//ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
 <link rel="stylesheet" href="/js/bulma.js" type="text/css" />
</%block>

## Setup title suffix
<%block name="title_extra"> - About</%block>

## Rest is what goes in parent's <body> section (via self.body())
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
                  This website is hosted on <a href="https://www.webfaction.com">Webfaction</a>. I have nothing but praise for those very responsive folks.</li>
              <li>SSL
                  <span class="icon is-tiny"><i class="fa fa-quote-left" aria-hidden="true"></i></span>added and removed here<span class="icon is-tiny"><i class="fa fa-quote-right" aria-hidden="true"></i></span>
for free, thanks to <a href="https://letsencrypt.org/">Let's Encrypt</a>.</li>
          <li>I believe in plain, static html pages when relevant, which is why this website is purely static. I don't necessarily need to handcraft every single page though, which is why I used a static site generator, <a href="/blog/2010/12/why-blogofile/">Blogofile</a>. Includes templating functionalities to avoid repeating yourself.</li>
          <li><a href="http://bulma.io">Bulma</a> CSS framework was of great help for layout and styling, since I have very poor UI skills.</li>
          <li>Source is versioned using Mercurial and available on <a href="https://bitbucket.org/nicdumz/website" title="bitbucket repository">Bitbucket</a>.</li>
          <li>Content built using Free Software (Vim, Gimp, Inkscape, ...).</li>
          <li>Most of the content is available under Creative Commons-By 3.0, please check LICENSE.txt file in the source for details.</li>
          </ul>

      </div>
    </div>
  </div>
</section>
