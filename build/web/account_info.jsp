<%-- 
    Document   : account_info
    Created on : Mar 9, 2016, 1:50:26 AM
    Author     : James
--%>

<%@include file="/header_user.jsp" %>
<title>Account Information</title>

<center>
    <table align="center" border="0">
        <tr><td>
                <br>
                <h1 align="center">Account Information</h1>

                <div id="content">
                    <div id="tab-container">
                        <ul> <%--url encode completed --%>
                            <li><a href="<%= response.encodeURL("personal_info.jsp")%>">Personal Info</a></li>
                            <li><a href="<%= response.encodeURL("work_info.jsp")%>">Work Info</a></li>
                            <li><a href="<%= response.encodeURL("education_info.jsp")%>">Education</a></li>
                            <li><a href="<%= response.encodeURL("account_info.jsp")%>">Account Info</a></li>
                        </ul>
                    </div>
                    <div id="main-container">
                        <form action="<%= response.encodeURL("userInfoServlet")%>" method="post">
                            <table cellspacing="5" border="0">
                                <tr>
                                    <td align="left">Email: </td>
                                    <td><input type="text" name="email" size="50"/></td>
                                </tr>
                                <tr>
                                    <td align="left">New Password: </td>
                                    <td><input type="text" name="newPassword" size="50"/></td>
                                </tr>
                                <tr>
                                    <td align="left">Confirm New Password: </td>
                                    <td><input type="text" name="confirmNewPassword" size="50"/></td>
                                </tr>
                                <tr>
                                    <td align="left">Account Deletion: </td>
                                    <td><input type="submit" value="Close Account"></td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td><br><input type="submit" value="Save">&nbsp;<input type="submit" value="Cancel"></td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
                <%-- code to complete table. this table centers the entire content.--%>
            </td>
        </tr>
    </table>
</center>
            
            <%@include file="footer.jsp" %>