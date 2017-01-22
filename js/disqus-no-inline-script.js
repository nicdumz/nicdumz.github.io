$(function() {
  var disqus_config = function () {
    var bookmark = $("a[rel=bookmark]").get(0);
    var disqus_url   = bookmark.href;
    if (document.location.host.indexOf('localhost') !== -1) {
      disqus_url = disqus_url.replace(document.location.host, 'nicdumz.fr');
    }
    if (disqus_url[disqus_url.length - 1] == '/') {
      disqus_url = disqus_url.substr(0, disqus_url.length - 1);
    }

    this.page.url = disqus_url.replace('http://', 'https://')
    this.page.title = bookmark.text;
  };

  var dsq = document.createElement('script');
  dsq.type = 'text/javascript';
  dsq.async = true;
  dsq.src = '//nicdumz.disqus.com/embed.js';
  dsq.setAttribute('data-timestamp', +new Date());
  (document.head || document.body).appendChild(dsq);
});
