<%-- 
    Document   : profile
    Created on : Mar 8, 2016, 11:47:44 PM
    Author     : James
--%>


<%@include file="/header_user.jsp" %>

 
     
    <sql:query var="listUsers"   dataSource="${myDS}">
        SELECT * FROM users WHERE email='<%=  session.getAttribute("email") %>';
    </sql:query>
      
            <sql:query var="usersWork"   dataSource="${myDS}">
        SELECT * FROM employment INNER JOIN users ON employment.user_id=users.id WHERE user_id=(SELECT id FROM users WHERE email='<%=  session.getAttribute("email") %>');
    </sql:query>
        
          <sql:query var="usersEducation"   dataSource="${myDS}">
               SELECT * FROM education INNER JOIN users ON education.user_id=users.id WHERE user_id=(SELECT id FROM users WHERE email='<%=  session.getAttribute("email") %>');
        
    </sql:query>
<h1 class="h1 text-center">Profile Information</h1>


<center>
    <table align="center" border="0">
        <tr><td align="center">
                <br>

                <table    style="background-color:#FFFFFF" width="500" cellpadding="3" cellspacing="3">

                    <tr>
                        <td rowspan="3" >
                            
                        <c:forEach var="user" items="${listUsers.rows}">
                <tr>
                 
                    <td><h2><c:out value="${user.first_name}" /> </h2></td>
                    <td><h2><c:out value="${user.last_name}" /> </h2></td>
                    
                                 </c:forEach> 
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>

                    </tr>
                    <tr>
                       
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                           
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
                                    
                                    <c:forEach var="work" items="${usersWork.rows}">
                                        <tr>
                                        <td align="left">Current Employer: 
                                        <c:out value="${work.employer}" />
                                        </td>
                                        <td align="left">&nbsp;</td>
                                    </tr>
                                        
                                    
                                       <tr>
                                        <td align="left">Position: 
                                        <c:out value="${work.position}" />
                                        </td>
                                        <td align="left">&nbsp;</td>
                                    </tr>
                                    
                                        <tr>
                                        <td align="left">Work Phone: 
                                        <c:out value="${work.work_phone}" />
                                        </td>
                                        <td align="left">&nbsp;</td>
                                    </tr>
                                    </c:forEach>
                                    
                                   
                                  
                                </table>

                            </fieldset>

                            <!-- Education Info Section-->        
                            <fieldset style="background-color:#FFFFFF; margin:.2em .5em; padding: .5em;">
                                <legend style="color:#000000; font-weight: bold;">Education Info </legend>


                                <table   style="margin: 12px;" align="left" cellspacing="5" border="0" width="560">
                                   
                                    
                                   < c:forEach var="edu" items="${usersEducation.rows}">
                <tr>
                
                 <tr>
                      <td align="left">Degree:<c:out value="${edu.degree}" /></td>
                      <td align="right">Major: <c:out value="${edu.major}" /></td>
                 </tr>
                 <tr>
                      <td align="left">Graduation Year: <c:out value="${edu.year_graduated}" /></td>
                </tr>
            </c:forEach>
                           

                                </table>
                            <form action="personal_info.jsp" method="post">
                                <input class="btn btn-warning" type="submit" value="Edit Profile">
                            </form>

                            </fieldset>
                        </div>
                    </div>
                </div>
               
            </td>
        </tr>
    </table>
</center>

<%@include file="footer.jsp" %>