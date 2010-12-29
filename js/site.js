//Blogofile should use $j for jQuery, not jQuery as that might be used by sphinx (if loaded)
var $j = jQuery;
function twitterSidebar(){
  $j("#nicdumz_tweets").tweet({
        count: 5,
        username: ["nicdumz"],
        loading_text: "searching twitter..."
        });
}

$j(document).ready(function(){
    twitterSidebar();
  });
