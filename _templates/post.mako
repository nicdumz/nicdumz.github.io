<%page args="post"/>

<% 
import re
post_id = re.sub("[ ?]","-",post.title.lower())
post_id = re.sub("[.!,]","",post_id)
%>

<div class="blog_post" id="${post_id}">
  <div class="blog_post_header">
    <a class="blog_post_title" />
    <h2 class="blog_post_title"><a href="${post.permapath()}" rel="bookmark" title="Permanent Link to ${post.title}">${post.title}</a></h2>
    <small>${post.date.strftime("%B %d, %Y at %I:%M %p")} | categories: 
    <% 
     category_links = []
     for category in post.categories:
         if post.draft:
             #For drafts, we don't write to the category dirs, so just write the categories as text
             category_links.append(category.name)
         else:
             category_links.append("<a href='%s'>%s</a>" % (category.path, category.name))
  %>
  ${", ".join(category_links)}
  % if bf.config.blog.disqus.enabled:
   | <a class="disqus-link" href="${post.permalink}#disqus_thread">View Comments</a>
  % endif
    </small>
  </div>
  <div class="post_prose">
    ${self.post_prose(post)}
  </div>
</div>

<%def name="post_prose(post)">
  ${post.content}
</%def>
