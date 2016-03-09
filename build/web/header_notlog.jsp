<%-- 
    Document   : header_notlog
    Created on : Mar 8, 2016, 10:11:02 PM
    Author     : James
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
       <style>
            .container {
                margin: 10%;
            }
            </style>
    
    </head>
    <body>
        <div id="pagewidth">
            
            <div class="head">
                <a href="<%= request.getContextPath()%>/index.jsp">
                    
                    <image src="<%= request.getContextPath()%>/img/cpp_logo.png" style="float: left; padding-left: 5px; padding-top: 5px;"/></a>
                <br>
               
                    <a class="header" href="<%= request.getContextPath()%>/index.jsp">&nbsp;&nbsp;CPP Alumni Network</a>
            
            </div>