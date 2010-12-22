<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <title>Nicolas Dumazet</title>

    <link rel="stylesheet" href="css/main.css" type="text/css" />
</head>

<body>
    <div id="content">
        <div id="header">
            ${self.header()}
        </div>
        <div id="all_but_header">
            <div id="main_block">
                <div id="prose_block">
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
<%def name="header()">
  <%include file="header.mako" />
</%def>
<%def name="footer()">
  <%include file="footer.mako" />
</%def>
<%def name="sidebar()">
</%def>
