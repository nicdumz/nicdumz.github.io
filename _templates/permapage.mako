<%inherit file="bf_base_template" />
<%include file="post.mako" args="post=post" />
% if bf.config.blog.disqus.enabled:
<div id="disqus_thread"></div>
<script type="text/javascript">
  var disqus_url = "${post.permalink}";
</script>
<script type="text/javascript" src="https://${bf.config.blog.disqus.name}.disqus.com/embed.js" async></script>
<noscript><a href="http://${bf.config.blog.disqus.name}.disqus.com/?url=ref">View the discussion thread.</a></noscript><a href="http://disqus.com" class="dsq-brlink">blog comments powered by <span class="logo-disqus">Disqus</span></a>
% endif
