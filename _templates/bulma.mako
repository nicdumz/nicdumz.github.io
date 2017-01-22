## Super basic page.
<!DOCTYPE html>
<html>
  <head>

## Children users can augment this section
<%block name="head">
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Nicolas Dumazet<%block name="title_extra" /></title>

    <link rel="shortcut icon" href="/favicon.ico" />
    <link rel="stylesheet" href="/css/bulma.css" type="text/css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css" />
    <script type="text/javascript" async src="/js/analytics.js"></script>
</%block>

  </head>
  <body>
    ## this means: insert here whatever children do not setup as part of <blocks>
    ${next.body()}
  </body>
</html>
