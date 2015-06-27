<%!
style = "light"
prose_id = "prose_block"
%>
<%inherit file="main.mako" />
<%def name="header()">
  <%include file="header.mako" args="variant='-black'" />
</%def>
<%def name="sidebar()">
  <%include file="sidebar.mako" />
</%def>
<%def name="head()">
  <%include file="bloghead.mako" />
</%def>
${next.body()}
