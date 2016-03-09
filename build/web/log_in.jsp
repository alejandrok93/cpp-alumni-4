<%-- 
    Document   : log_in
    Created on : Mar 8, 2016, 10:28:14 PM
    Author     : James
--%>
<%@include file="header_notlog.jsp" %>
<div id="box">
    <h2>Log In</h2>
   
    <%@include file="error.jsp" %>
    
    <form action="LoginServlet" method="post">
        <table width="100%" cellpadding="2">
        <tr>
            <td class="right_align" title="Enter email">Email: </td>
            <td class="left_align">
            
             <input type="email" class="form-control" name="email" placeholder="Email Address" required>
            </td></tr>
        <tr>
            <td class="right_align">Password: </td>
            <td class="left_align">
            <input type="password" class="form-control" name="password" placeholder="Password" required>
            </td>
        </tr>   
    </table>
        <input type="button" value="Cancel" onClick="window.location.href='index.jsp'"/>
        
         <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button> 
        
        <br>
        
            &nbsp;&nbsp;<a href="sign_up.jsp" title="Sign up for an account">Sign Up</a>
    </form>
</div>
<br>
<%@include file="footer.jsp" %>