<%-- 
    Document   : home
    Created on : Mar 8, 2016, 10:23:53 PM
    Author     : James
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/styles/main.css"/>
    <title>CPP Alumni Network</title>
</head>

<body>
      <table class="home">
        <td>
            <a href="<%= response.encodeURL(request.getContextPath() + "/log_in.jsp") %>">Log In</a>
        </td>
        <td> | </td>
        <td>
            <a href="<%= response.encodeURL(request.getContextPath() + "/sign_up.jsp") %>">Sign Up</a>
        </td>
    </table>
         <br>
    <img class="homepageImg"
         src="<%= request.getContextPath()%>/img/cpp_center.jpg"
         alt="Cal Poly Pomona Logo"/>
   
  
        
      <%@include file="footer.jsp" %>   
