<%-- 
    Document   : personal_info
    Created on : Mar 9, 2016, 1:19:01 AM
    Author     : James
--%>

<%@include file="/header_user.jsp" %>
<title>Personal Information</title>

<center>
    <table align="center" border="0">
        <tr><td>
                <br>
                <h1 align="center">Personal Information</h1>

                <div id="content">
                    <div id="tab-container">
                        <ul>
                            <li><a href="<%= response.encodeURL("personal_info.jsp")%>">Personal Info</a></li>
                            <li><a href="<%= response.encodeURL("work_info.jsp")%>">Work Info</a></li>
                            <li><a href="<%= response.encodeURL("education_info.jsp")%>">Education</a></li>
                            <li><a href="<%= response.encodeURL("account_info.jsp")%>">Account Info</a></li>
                        </ul>
                    </div>


                    <div id="main-container">
                        <%-- 
                        userInfoServlet needs to populate the information to update
                        
                        --%>
                        
                        <form action="UpdateAccountServlet" method="post">
                            <input type="hidden" value="personal_info" name="type">
                            <table cellspacing="5" border="0">
                                <tr>
                                    <td align="left">First Name: *</td>
                                    <td><input type="text" name="firstName" size="50"></td>
                                </tr>
                                <tr>
                                    <td align="left">Last Name: *</td>
                                    <td><input type="text" name="lastName" size="50"></td>
                                </tr>

                                <tr>
                                    <td align="left">Last Name on Diploma:</td>
                                    <td><input type="text" name="lastNameOnDiploma" size="50"></td>
                                </tr>
<tr>
                                    <td align="left">Email: </td>
                                    <td><input type="text" name="email" size="50"/><br></td></tr>
        <tr><td>
                                    
    </td>
                                    

                                <tr>
                                    <td align="left">Cell Phone:</td>
                                    <td><input type="text" name="phone" size="50"/></td>
                                </tr>
                               

                                <tr>
                                    <td align="left" style="position: relative; bottom: 30px;">About Me:</td>
                                    <td><textarea name="desc" rows="3" cols="37"></textarea></td>
                                </tr>
                               
                                <tr>
                                    <td colspan="2">&nbsp;</td>

                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td><input type="submit" value="Save">&nbsp;<input type="submit" value="Cancel"></td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
               
            </td>
        </tr>
    </table>
</center>

<%@include file="footer.jsp" %>