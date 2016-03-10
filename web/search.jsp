<%-- 
    Document   : search
    Created on : Mar 9, 2016, 7:05:13 PM
    Author     : alejandrok
--%>

<%@include file="header_user.jsp" %>
<div class="container">   
<img class="img img-responsive text-center"
         src="<%= request.getContextPath()%>/img/cpp_center.jpg"
         alt="Cal Poly Pomona Logo"/>
    <br>
    <p> Search for a user: </p>
    <form action="SearchServlet" method="POST">
        <input type="text" name="userEmail">
        <input type="submit" value="Search">
        </div>
         
         
         
     <sql:query var="listUsers"   dataSource="${myDS}">
         SELECT * FROM users WHERE email='<%=  request.getParameter("userEmail") %>';
    </sql:query>

        <table    style="background-color:#FFFFFF" width="500" cellpadding="3" cellspacing="3">

                    <tr>
                        <td rowspan="3" >
                            
                        <c:forEach var="user" items="${listUsers.rows}">
                <tr>
                 
                    <td><p><c:out value="${user.first_name}" /> </p></td>
                    <td><p><c:out value="${user.last_name}" /> </p></td>
                    
                        </c:forEach> 
        
        
        
      <%@include file="footer.jsp" %>   
