 $(function() {
     var bookmark = $("a[rel=bookmark]").get(0);
     var disqus_url   = bookmark.href;
     var disqus_title = bookmark.title;


        var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
        dsq.src = '//nicdumz.disqus.com/embed.js';
        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
    });
