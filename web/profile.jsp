<%-- 
    Document   : profile
    Created on : Mar 8, 2016, 11:47:44 PM
    Author     : James
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 

<%@include file="/header_user.jsp" %>

  <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/cpp-alumni"
        user="root" password="sesame"
    />
     
    <sql:query var="listUsers"   dataSource="${myDS}">
        SELECT * FROM users WHERE email='alejandro@email.com';
    </sql:query>
          <sql:query var="usersWork"   dataSource="${myDS}">
        SELECT * FROM employment WHERE email='alejandro@email.com';
    </sql:query>
         <sql:query var="usersEducation"   dataSource="${myDS}">
        SELECT * FROM users WHERE email='alejandro@email.com';
    </sql:query>
        
<title>Profile Information</title>


<center>
    <table align="center" border="0">
        <tr><td align="center">
                <br>

                <table    style="background-color:#FFFFFF" width="500" cellpadding="3" cellspacing="3">

                    <tr>
                        <td rowspan="3" >
                            
                        <td>
                                
                              
                                 <c:forEach var="user" items="${listUsers.rows}">
                <tr>
                 
                    <td><h2><c:out value="${user.first_name}" /> </h2></td>
                    <td><h2><c:out value="${user.last_name}" /> </h2></td>
                    
                                 </c:forEach> 
                            
                </tr>
             LastName ]</h2></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>

                    </tr>
                    <tr>
                        <td></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                           <form action="<%= response.encodeURL(request.getContextPath() + "/personal_info.jsp")%>" method="post">
                                <input type="submit" value="Edit">
                            </form>
                        </td>
                       
                    </tr>
                    <tr>
                        <td><a href="<%= response.encodeURL(request.getContextPath() + "/profile.jsp")%>">Info</a></td>
                   
                    </tr>
                     <tr>
                        <td>Friends <%-- <a href="<%= response.encodeURL(request.getContextPath() + "/view/profile_friends.jsp")%>">Friends</a>--%></td>
                    </tr>
                    
                     
                    
                </table>

                <div id="content">
                   
                    <div id="main-container">            

                        <div>
                            <fieldset style="background-color:#FFFFFF; margin:.2em .5em; padding: .5em;">
                                <legend style="color:#000000; font-weight: bold;">Personal Info </legend>


                                <table style="margin: 12px;"  align="left" cellspacing="5" border="0" width="560">
                                      <c:forEach var="user" items="${listUsers.rows}">
                <tr>
                 <tr>
                     <td align="left">Email: <c:out value="${user.email}" /></td>
                 </tr>
                 <tr>
                      <td align="left">Cell Phone:<c:out value="${user.phone}" /></td>
                 </tr>
                 <tr>
                      <td align="left">About Me:<c:out value="${user.description}" /></td>
                </tr>
            </c:forEach>
                                    
                                    
                                   

                                </table>


                            </fieldset>
                            <!-- Personal Info Section-->        
                            <fieldset style="background-color:#FFFFFF; margin:.2em .5em; padding: .5em;">
                                <legend style="color:#000000; font-weight: bold;">Work Info </legend>


                                <table   style="margin: 12px;" align="left" cellspacing="5" border="0" width="560">
                                    <tr>
                                        <td align="left">Current Employer: [Cal Poly Pomona]</td>
                                        <td align="left">&nbsp;</td>
                                    </tr>

                                    <tr>
                                        <td align="left">Position: [position]</td>
                                        <td>&nbsp;</td>
                                    </tr>

                                    

                                    <tr>
                                        <td align="left">Work Phone: [workphone]</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                   
                                  
                                </table>

                            </fieldset>

                            <!-- Education Info Section-->        
                            <fieldset style="background-color:#FFFFFF; margin:.2em .5em; padding: .5em;">
                                <legend style="color:#000000; font-weight: bold;">Education Info </legend>


                                <table   style="margin: 12px;" align="left" cellspacing="5" border="0" width="560">
                                    <tr>
                                        <td align="left">Institution: [Cal Poly Pomona]</td>
                                        <td align="left">&nbsp;</td>
                                    </tr>

                                    <tr>
                                        <td align="left">Degree: [bachelors]</td>
                                        <td align="right">Major: [CIS]</td>
                                    </tr>

                                    <tr>
                                        <td>Graduation Year: [year]</td>
                                        <td>&nbsp;</td>
                                    </tr>

                                    <tr>
                                        <td colspan="2"><hr></td>

                                    </tr>

                                    <tr>
                                        <td align="left">Institution: [Cal Poly Pomona]</td>
                                        <td align="left">&nbsp;</td>
                                    </tr>

                                    <tr>
                                        <td align="left">Degree: [bachelors]</td>
                                        <td align="right">Major: [CIS]</td>
                                    </tr>

                                    <tr>
                                        <td>Graduation Year: [year]</td>
                                        <td>&nbsp;</td>
                                    </tr>

                                </table>

                            </fieldset>
                        </div>
                    </div>
                </div>
               
            </td>
        </tr>
    </table>
</center>

<%@include file="footer.jsp" %>