<%inherit file="bulma_and_top_nav.mako"/>

## Extend parent head.
<%block name="head">
${parent.head()}
 <link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="${bf.util.site_path_helper(bf.config.blog.path,'/feed/index.xml')}" />
 <link rel="alternate" type="application/atom+xml" title="Atom 1.0"
 href="${bf.util.site_path_helper(bf.config.blog.path,'/feed/atom/index.xml')}" />

 % for css_file in bf.config.filters.syntax_highlight.mod.css_files_written:
 <link rel='stylesheet' href='${css_file}' type='text/css' />
 % endfor

## <script id="dsq-count-scr" src="https://nicdumz.disqus.com/count.js" defer></script>
</%block>

## Setup title suffix
<%block name="title_extra"> - Blog</%block>

## Rest is what goes in parent's <body> section (via self.body())
<section class="hero is-dark is-small has-text-right">
  <div class="hero-body">
    <div class="container is-dark">
      <p class="title">Ramblings</p>
    </div>
  </div>
</section>

<section class="section">
  <div class="container">

  <div class="columns">
      <div class="column is-hidden-mobile is-2">
        <%include file="sidebar.mako"  args="posts=posts" />
      </div>

      <div class="column">

      ${next.body()}

      </div>
    </div>

  </div>
</section>
