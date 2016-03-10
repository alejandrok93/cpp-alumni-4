<%-- 
    Document   : work_info
    Created on : Mar 9, 2016, 1:28:09 AM
    Author     : James
--%>

<%@include file="header_user.jsp" %>

<title>Work Information</title>

<center>
    <table align="center" border="0">
        <tr><td>
                <br>
                <h1 align="center">Work Information</h1>
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
                               <%-- 
                        workInfoServlet needs to populate the information to update
                        
                        --%>
                        
                        <form action="UpdateAccountServlet" method="post">
                             <input type="hidden" value="work_info" name="type">
                            <table cellspacing="5" border="0">

                                <tr>
                                    <td align="left">Employer:</td>
                                    <td><input type="text" name="employer" size="50"></td>
                                </tr>
                                <tr>
                                    <td align="left">Position:</td>
                                    <td><input type="text" name="position" size="50"></td>
                                </tr>
                             
                                     
                                <tr>
                                    <td align="left">Work Phone:</td>
                                    <td><input type="text" name="workPhone" size="50"></td>
                                </tr>
                                     

                                <tr>
                                    <td>&nbsp;</td>
                                    <td><br><input type="submit" value="Save">&nbsp;<input type="submit" value="Cancel"></td>
                                </tr>
                            </table>
                        </form>
                    </div>
            </td>
        </tr>
    </table>
</center>
                            
                            <%@include file="footer.jsp" %>