<%
# each menu item is 20px wide, + 1px margin
size = 20 + 1
# total width - (right hand width + 2*padding + border size)
base = 1100 - (270 + 10*2 + 1)
%>
<%page args="variant=''" />
 <div style="width:1100px; margin: 0 auto;">
  <a href="/inside.html" title="Go to site root">
      <img id="title" alt="Nicolas Dumazet" title="a.k.a. NicDumZ" src="/images/generic/ndumazet${variant}.png"/>
  </a>
    <a href="/blog/">
      <img class="menu-item" alt="My Blog" src="/images/generic/blog${variant}.png" style="margin-left:${base - size}px"/>
    </a>
    <a href="#">
      <img class="menu-item" alt="Open Source" src="/images/generic/opensource.png" style="margin-left:${base}px"/>
    </a>
    <a href="/contact.html" title="Contact me">
      <img class="menu-item" alt="Contact" src="/images/generic/contact${variant}.png" style="margin-left:${base + size}px"/>
    </a>
 </div>
