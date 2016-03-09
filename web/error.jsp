<% String pageError = request.getParameter("error");
    if (pageError != null) {
%><%= "<p class='error'>" + pageError + "</p>"%>
<%}%>