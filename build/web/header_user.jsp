<%-- 
    Document   : header_user
    Created on : Mar 8, 2016, 10:49:55 PM
    Author     : James
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 
Need classes to import a DB request, then need to pull up the USER info
<%@page import="Thing importing" %>
--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
       <style>
            .container {
                margin: 10%;
            }
            
             td {
    padding: 10px;
}
            </style>
    
        <title>JSP Page</title>
    </head>
    <body>
        <div class="head">
                <a href="<%= request.getContextPath()%>/home.jsp">
                    
                    <image src="<%= request.getContextPath()%>/img/cpp_logo.png" style="float: left; padding-left: 5px; padding-top: 5px;"/></a>
                <br>
               
                    <a class="header" href="<%= request.getContextPath()%>/home.jsp">&nbsp;&nbsp;CPP Alumni Network</a>
            
            </div>
        <table cellpadding="10">
            <tr>
                <td>Logout</td>
                <td>Search</td>
                <td><a href="<%= response.encodeURL(request.getContextPath() + "/profile.jsp")%>">Profile</a></td>
                <td>Friends</td>
            </tr>
            
        </table>
        