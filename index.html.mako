<%inherit file="bulma.mako"/>

## Rest is what goes in parent's <body> section (via self.body())
<section class="hero is-primary is-fullheight">
  <div class="hero-body">
    <div class="container content">
      <div class="columns">
        <div class=column>
          <h1 class="title is-1 is-bold">Nicolas Dumazet</h1>
          <h2 class="subtitle code-font">a.k.a. NicDumZ</h2>
        </div>
      </div>
      <div class="columns">
        <!-- spacer -->
        <div class="column is-two-thirds"></div>
        <div class="column">
          <a class="button is-outlined is-info is-large code-font" href="inside.html" title="Enter">self.__init__()</a>
        </div>
      </div>
      <!-- container -->
    </div>
    <!-- hero-body -->
  </div>
</section>
