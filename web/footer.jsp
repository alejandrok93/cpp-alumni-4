<%-- 
    Document   : footer
    Created on : Mar 8, 2016, 10:05:18 PM
    Author     : James
--%>

<%@ page import="java.util.*" %>
<% GregorianCalendar currentDate = new GregorianCalendar();
    int currentYear = currentDate.get(Calendar.YEAR);
%>

<!DOCTYPE html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
</head>
<div id="footer" class="footer text-center">
    <p><font color="#000000">  &copy; Copyright   <%= currentYear%> CPP Alumni Network</font></p>
</div>
    </body>
</html>
