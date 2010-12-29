<%!
title = "Nicolas Dumazet"
dark = dict(header_color="white", body_color="black", font_color="white")
light = dict(header_color="black", body_color="white", font_color="black")
style = dark
prose_id = "prose_block_nonblog"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>

    <link rel="shortcut icon" href="favicon.ico" />
    <link rel="stylesheet" href="/css/main.css" type="text/css" />
    ${self.head()}
</head>

<body>
    <div id="content">
        <div id="header" style="background-color: ${self.attr.style['header_color']};">
            ${self.header()}
        </div>
        <div id="all_but_header" style="background-color: ${self.attr.style['body_color']}; color: ${self.attr.style['font_color']};">
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
