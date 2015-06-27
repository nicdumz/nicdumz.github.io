<%!
title = "Nicolas Dumazet"
style = "dark"
prose_id = "prose_block_nonblog"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>

    <meta http-equiv="Content-Security-Policy"
    content="default-src 'self'; child-src disqus.com; object-src 'none'; style-src 'self' 'unsafe-inline' *.disquscdn.com; img-src 'self *.disqus.com *.disquscdn.com *.nicdumz.fr *.google-analytics.com; script-src 'self' *.googleapis.com *.google-analytics.com *.search.twitter.com *.disqus.com *.disquscdn.com">

    <link rel="shortcut icon" href="${bf.config.site.url}/favicon.ico" />
    <link rel="stylesheet" href="/css/main.css" type="text/css" />
    <script type="text/javascript" async src="/js/analytics.js"></script>
    <script type="text/javascript" async src="//${bf.config.blog.disqus.name}.disqus.com/count.js"></script>
    ${self.head()}
</head>

<body>

    <div id="content">
        <div id="header" class="${self.attr.style}-header">
            ${self.header()}
        </div>
        <div id="all_but_header" class="${self.attr.style}-all-but-header">
            <div id="main_block">
                <div id="${self.attr.prose_id}">
                    ${next.body()}
                </div>
                ${self.sidebar()}
            </div>
            <div id="footer">
                ${self.footer()}
            </div>
        </div>
    </div>
</body>
</html>
<%def name="head()">
    <title>${self.attr.title}</title>
</%def>
<%def name="header()">
  <%include file="header.mako" />
</%def>
<%def name="footer()">
  <%include file="footer.mako" />
</%def>
<%def name="sidebar()">
</%def>
