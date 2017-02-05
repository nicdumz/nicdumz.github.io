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

## Just extend parent head to add JS.
<%block name="head">
${parent.head()}
 <script src="//ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
 <script src="/js/bulma.js" async></script>
</%block>

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
