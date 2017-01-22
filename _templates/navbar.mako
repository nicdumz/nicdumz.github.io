## active_section helps highlighting the tab we're in.
<%page args="active_section" />
## Define all the tabs we'll want to see in the nav
<%!
  from collections import namedtuple
  Nav = namedtuple('Nav', ['id', 'url', 'text', 'css'])
%>
<%
  def css(id):
    return 'nav-item' + (id == active_section and ' is-active' or '')
  navitems = [
    Nav('home', '/inside.html', 'Home', css('home')),
    Nav('blog', '/blog/', 'Blog', css('blog')),
    Nav('about', '/about.html', 'About', css('about')),
    Nav('contact', '/contact.html', 'Contact', css('contact'))]
%>
    <script src="/js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" async src="/js/bulma.js"></script>

    <div class="container">
      <nav class="nav">
        <div class="nav-left">
          <a class="nav-item is-brand" href="/">
            <p class="title is-4">Nicolas Dumazet</p>
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
          <a class="${nav.css}" href="${nav.url}">${nav.text}</a>
% endfor
        </div>
      </nav>
    </div>


