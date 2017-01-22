## Adapted from bf's chronological.mako, mostly to remove horrible <hr>
<%inherit file="blog.mako" />
% for post in posts:
  <%include file="post.mako" args="post=post" />
% if bf.config.blog.disqus.enabled:
  <div class="after_post"><a href="${post.permalink}#disqus_thread">Read and Post Comments</a></div>
% endif
% endfor

% if prev_link:
 <a href="${prev_link}">« Previous Page</a>
% endif

% if next_link:
 <a href="${next_link}">Next Page »</a>
% endif
