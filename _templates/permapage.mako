<%inherit file="main.mako" />
<%def name="sidebar()">
  <%include file="sidebar.mako" />
</%def>
<%def name="head()">
  <%include file="bloghead.mako" />
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
