<%-- 
    Document   : log_in
    Created on : Mar 8, 2016, 10:28:14 PM
    Author     : James
--%>
<%@include file="header_notlog.jsp" %>
<div id="box">
    <h2 class="h2 text-center">Log In</h2>
   
    <%@include file="error.jsp" %>
    <div id ="container">
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
        <br>
        
          <div class="row">
                 <div class="col-md-6">
               <input type="button" class ="btn btn-default btn-block btn-warning btn-lg" value="Sign Up" onClick="window.location.href='sign_up.jsp'"/>
                </div>
                 <div class="col-md-6">
                    <button class="btn  btn-primary btn-block btn-lg " type="submit">Login</button>
                    </div>
                </div>
    </div>

    </form>
</div>
<br>
<%@include file="footer.jsp" %>