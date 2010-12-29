function twitterSidebar(){
  $("#nicdumz_tweets").tweet({
        count: 5,
        username: ["nicdumz"],
        loading_text: "searching twitter..."
        });
}

$(function(){
    $("a.disqus-link").disqusLink("nicdumz");
    twitterSidebar();
  });
