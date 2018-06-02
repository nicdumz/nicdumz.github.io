<aside class="menu">
  <p class="menu-label">
  Latest blog posts
  </p>
  <ul class="menu-list">
% for post in bf.config.blog.posts[:5]:
    <li><a href="${post.path}">${post.title}</a></li>
% endfor
  </ul>

  <p class="menu-label">
  Categories
  </p>
  <ul class="menu-list">
% for category, num_posts in bf.config.blog.all_categories:
  <li><a href="${category.path}">${category} (${num_posts})</a></li>
##FIXME: offer links (<a href="${category.path}/feed/index.xml">rss</a>)
% endfor
  </ul>

  <p class="menu-label">
  Archives
  </p>
  <ul class="menu-list">
% for link, name, num_posts in bf.config.blog.archive_links:
  <li><a href="${bf.util.site_path_helper(bf.config.blog.path,link)}/1/" title="${name}">${name}&nbsp;(${num_posts})</a></li>
% endfor
  </ul>

  <p class="menu-label">
  Meta
  </p>
  <ul class="menu-list">
    <li>
      <a href="/blog/feed/index.xml" title="RSS feed">
        <span class="icon is-small"><i class="fas fa-rss" aria-hidden="true"></i></span>
        RSS feed
      </a>
    </li>
  </ul>

</aside>
