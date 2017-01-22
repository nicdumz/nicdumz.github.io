<!DOCTYPE html>
<html>
<%include file="bulma_header.mako" args="title='Contact me'"/>
  <body>
    <script type="text/javascript" async src="/js/analytics.js"></script>

<%include file="navbar.mako" args="active_section='contact'"/>

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
          <div class="column has-text-centered notification is-light is-offset-one-quarter-desktop is-half-desktop is-one-third-tablet is-offset-one-third-tablet">
            Please, have some more of my sarcasm.
          </div>
        </div>

        <div class="columns has-text-centered">
          <div class="column">

    <a class="button is-medium" href="https://github.com/nicdumz" title="github profile">
    <span class=icon><i class="fa fa-github" aria-hidden="true"></i></span><span>GitHub</span>
    </a>
    <a class="button is-medium" href="https://linkedin.com/in/nicdumz" title="linkedin profile">
    <span class=icon><i class="fa fa-linkedin" aria-hidden="true"></i></span><span>linkedin</span>
    </a>
    <a class="button is-medium" href="https://facebook.com/nicdumz" title="facebook profile">
    <span class=icon><i class="fa fa-facebook" aria-hidden="true"></i></span><span>Facebook</span>
    </a>
    <a class="button is-medium" href="mailto:nicdumz@gmail.com" title="email">
    <span class=icon><i class="fa fa-envelope" aria-hidden="true"></i></span><span>email</span>
    </a>
          </div>
        </div>
      </div>
    </section>
  </body>
</html>
