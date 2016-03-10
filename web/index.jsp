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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/styles/main.css"/>
    <title>CPP Alumni Network</title>
    
    <style>
         img {
             centerheight:  20%;
        width: 20%;
        display: block;
    margin: 0 auto;
          
      }
        </style>
</head>

<body>
    <div class="page-header text-center h1">
     
            <a href="<%= response.encodeURL(request.getContextPath() + "/log_in.jsp") %>">Log In  </a>
       |
            <a href="<%= response.encodeURL(request.getContextPath() + "/sign_up.jsp") %>">Sign Up</a>
       
        </div>
         <br>
    <img class="img img-responsive img-rounded"
         src="<%= request.getContextPath()%>/img/cpp_center.jpg"
         alt="Cal Poly Pomona Logo"/>
   
  
        
      <%@include file="footer.jsp" %>   
