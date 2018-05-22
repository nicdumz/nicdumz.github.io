## Define all the tabs we'll want to see in the navbar
<%!
  from collections import namedtuple
  Nav = namedtuple('Nav', ['url', 'text'])
  navbaritems = [
    Nav('/', 'Home'),
    Nav('/blog/', 'Blog'),
    Nav('/#about', 'About'),
    Nav('/#contact', 'Contact')]
%>
<%inherit file="bulma.mako"/>

## And include navbar things
<div class="container">
  <navbar class="navbar">
    <div class="navbar-brand">
      <a class="navbar-item" href="/">
        <p class="title">Nicolas Dumazet</p>
      </a>
      <!-- This "navbar-burger" hamburger menu is only visible on mobile -->
      <!-- JavaScript toggles the "is-active" class on "navbar-menu" -->
      <a role="button" id="navbar-burger" class="navbar-burger">
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
      </a>
    </div>

    <div id="navbar-menu" class="navbar-menu">
      <div class="navbar-end">
% for navbar in navbaritems:
        <a class="navbar-item" href="${navbar.url}">${navbar.text}</a>
% endfor
      </div>
    </div>
  </navbar>
</div>
${next.body()}

## Read https://www.html5rocks.com/en/tutorials/speed/script-loading/
## We sort of need this to load to have a perfect page, but second script is
## dependent on first, and there's no great way to make things better than this.
<script src="//ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">
jQuery(document).ready(function ($) {
  var $menu = $('#navbar-menu');

  // Support for Menu toggling.
  $('#navbar-burger').click(function() {
      $(this).toggleClass('is-active');
      $menu.toggleClass('is-active');
  });

  // Add is-active to the correct navbar links.
  $("a.navbar-item").each(function(index, elt) {
    if (elt.href == document.location) {
      $(elt).addClass('is-active');
    }
  });
});
</script>
