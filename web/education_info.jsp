<%-- 
    Document   : education_info
    Created on : Mar 9, 2016, 1:45:37 AM
    Author     : James
--%>

<%@include file="/header_user.jsp" %>
<title>Education</title>


<center>
    <table align="center" border="0">
        <tr><td>
                <br>
                <h1 align="center">Education</h1>
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
                        <br><br>
                        <form action="<%= response.encodeURL("userInfoServlet")%>" method="post">
                            <table cellspacing="5" border="0">
                                <tr>
                                    <td align="left" width="150">Institution: </td>
                                    <td><input type="text" name="institution" size="50"></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="left">Degree: </td>
                                    <td><input type="text" name="degree" size="50"></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="left">Major: </td>
                                    <td><input type="text" name="major" size="50"></td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="left">Graduation: </td>
                                    <td>
                                        <select id="graduationYear" name="graduationYear">
                                            <option value="2012">2016</option>
                                            <option value="2011">2015</option>
                                            <option value="2012">2014</option>
                                            <option value="2011">2013</option>
                                            <option value="2012">2012</option>
                                            <option value="2011">2011</option>
                                            <option value="2010">2010</option>
                                            <option value="2009">2009</option>
                                            <option value="2008">2008</option>                    
                                            <option value="2007">2007</option>
                                            <option value="2006">2006</option>
                                   
                                        </select>
                                    </td>
                                    <td><input type="submit" value="Add"></td>
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