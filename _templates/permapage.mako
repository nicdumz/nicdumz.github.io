<%inherit file="blog.mako" />
<%def name="head()">
  ${parent.head()}
  <script type="text/javascript" src="/js/prettify-min.js"></script>
  <script type="text/javascript" src="/js/showdown-min.js"></script>
  <script type="text/javascript" src="/js/disqus-no-inline-script.js"></script>
</%def>
<%include file="post.mako" args="post=post" />
<div id="disqus_thread"></div>
