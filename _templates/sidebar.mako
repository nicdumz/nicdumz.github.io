<div class="right_sidebar">
<div id="right_sidebar">
  <div id="contact">
  <h3>Meta</h3>
    <ul>
    <li> <img src="/images/generic/bullet-feed.png" class="rss-icon"> <a href="/blog/feed/index.xml" alt="RSS feed">RSS entries</a> </li>
    </ul>
  </div>
  <div id="blog_post_list">
  <h3>Latest blog posts</h3>
  <ul>
% for post in bf.config.blog.posts[:5]:
    <li><a href="${post.path}">${post.title}</a></li>
% endfor
  </ul>
  </div>
  <div id="on_twitter">
    <h3>On Twitter <small>instant rants</small></h3>
    <div id="nicdumz_tweets"></div>
    <a href="http://twitter.com/nicdumz" style="float: right">See more tweets</a>
  </div>
  <div id="categories">
    <h3>Categories</h3>
    <ul>
% for category, num_posts in bf.config.blog.all_categories:
     <li><a href="${category.path}">${category}</a> (<a href="${category.path}/feed/index.xml">rss</a>) (${num_posts})</li>
% endfor
    </ul>
  </div> 
  <div id="archives">			
    <h3>Archives</h3>
    <ul>
% for link, name, num_posts in bf.config.blog.archive_links:
      <li><a href="${bf.util.site_path_helper(bf.config.blog.path,link)}/1" title="${name}">${name}</a>&nbsp;(${num_posts})</li>
% endfor
    </ul>
  </div>

</div>
</div>
