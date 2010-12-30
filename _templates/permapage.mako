<%inherit file="blog.mako" />
<%def name="head()">
  ${parent.head()}
  <script type="text/javascript" src="/js/prettify-min.js"></script>
  <script type="text/javascript" src="/js/showdown-min.js"></script>
  <script type="text/javascript">
  var disqus_url   = "${post.permalink}";
  var disqus_title = "${post.title}";
  $(function(){
      $('#disqus_thread').disqus({
          domain:     "nicdumz",
          title:      disqus_title,
          show_count: true,
          prettify:   true,
          markdown:   true,
          url:        disqus_url,
      });
  });
  </script>
</%def>
<%include file="post.mako" args="post=post" />
<div id="disqus_thread"></div>
