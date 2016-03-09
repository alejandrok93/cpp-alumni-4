<%-- 
    Document   : profile
    Created on : Mar 8, 2016, 11:47:44 PM
    Author     : James
--%>
<%@include file="/header_user.jsp" %>
<title>Profile Information</title>


<center>
    <table align="center" border="0">
        <tr><td align="center">
                <br>

                <table    style="background-color:#FFFFFF" width="500" cellpadding="3" cellspacing="3">

                    <tr>
                        <td rowspan="3" >
                            
                        <td><h2>[FirstName LastName ]</h2></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>

                    </tr>
                    <tr>
                        <td>[Mascot at Cal Poly Pomona]</td>
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
                                    
                                    <tr>
                                        <td align="left">Email: [email]</td>
                                        <td>&nbsp;</td>
                                    </tr>

                                    <tr>
                                        <td>Home Phone: [home phone]</td>
                                        <td align="right">Cell Phone: [cell phone]</td>
                                    </tr>

                                    <tr>
                                        <td align="left">About Me: [about description]</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    
                                   

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
                                        <td align="left">Position: [mascot]</td>
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