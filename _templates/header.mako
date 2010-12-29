<%
base = 788
size = 20 + 1
%>
<%page args="variant=''" />
 <div style="width:1100px; margin: 0 auto;">
  <a href="/inside.html" alt="Got to site root">
      <img id="title" alt="Nicolas Dumazet" title="a.k.a. NicDumZ" src="/images/generic/ndumazet${variant}.png"/>
  </a>
##  <div id="menu-container">
    <a href="/blog/">
      <img class="menu-item" alt="My Blog" src="/images/generic/blog${variant}.png" style="margin-left:${base}px"/>
    </a>
    <a href="#">
      <img class="menu-item" alt="Open Source" src="/images/generic/opensource.png" style="margin-left:${base + size}px"/>
    </a>
    <a href="/contact.html" alt="Contact me">
      <img class="menu-item" alt="Contact" src="/images/generic/contact${variant}.png" style="margin-left:${base + 2*size}px"/>
    </a>
##  </div>
 </div>
