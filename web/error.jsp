<% String pageError = request.getParameter("error");

    if (pageError != null) {
       
%><%= "<p class='alert alert-danger'>" + pageError + "</p>"%>
<%}%>