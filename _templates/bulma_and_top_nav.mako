## Define all the tabs we'll want to see in the nav
<%!
  from collections import namedtuple
  Nav = namedtuple('Nav', ['url', 'text'])
  navitems = [
    Nav('/inside.html', 'Home'),
    Nav('/blog/', 'Blog'),
    Nav('/about.html', 'About'),
    Nav('/contact.html', 'Contact')]
%>
<%inherit file="bulma.mako"/>

## And include nav things
<div class="container">
  <nav class="nav">
    <div class="nav-left">
      <a class="nav-item is-brand" href="/">
        <p class="title">Nicolas Dumazet</p>
      </a>
    </div>
    <!-- This "nav-toggle" hamburger menu is only visible on mobile -->
    <!-- JavaScript toggles the "is-active" class on "nav-menu" -->
    <span id="nav-toggle" class="nav-toggle">
% for nav in navitems:
      <span></span>
% endfor
    </span>

    <!-- This "nav-menu" is hidden on mobile -->
    <!-- Add the modifier "is-active" to display it on mobile -->
    <div id="nav-menu" class="nav-right nav-menu">
% for nav in navitems:
      <a class="nav-item" href="${nav.url}">${nav.text}</a>
% endfor
    </div>
  </nav>
</div>
${next.body()}

## Read https://www.html5rocks.com/en/tutorials/speed/script-loading/
## We sort of need this to load to have a perfect page, but second script is
## dependent on first, and there's no great way to make things better than this.
<script src="//ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">
jQuery(document).ready(function ($) {
  var $menu = $('#nav-menu');

  // Support for Menu toggling.
  $('#nav-toggle').click(function() {
      $(this).toggleClass('is-active');
      $menu.toggleClass('is-active');
  });

  // Add is-active to the correct nav links.
  $("ul.menu-list li a, a.nav-item").each(function(index, elt) {
    if (elt.href == document.location) {
      $(elt).addClass('is-active');
    }
  });
});
</script>
