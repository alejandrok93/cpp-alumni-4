<%-- 
    Document   : sign_up
    Created on : Mar 8, 2016, 10:35:12 PM
    Author     : James
--%>

<%@include file="header_notlog.jsp" %>

<div class="container">
            <h2 class="page-header text-center">CPP Alunmi Network</h2>
            
        <%@include file="error.jsp" %>
            
             <h2 class="form-signin-heading">Register: </h2>
            <form action="RegisterServlet" method="POST"  >
               <div class="form-group">
                <label>First Name:</label>
                <input type="text" name="firstName" placeholder="First Name">
               </div>
                
                <div class="form-group">
                 <label>Last Name:</label>
                <input type="text" name="lastName" placeholder="Last Name">
                </div>
                
                <div class="form-group">
                 <label>Diploma Last Name:</label>
                <input type="text" name="lastNameDiploma" placeholder="Last Name in Diploma">
                </div>
                
                <div class="form-group">
                 <label>Email:</label>
                <input type="email" name="email" placeholder="Email Address">
                </div>
                
                <div class="form-group">
                 <label>Password:</label>
                <input type="password" name="password" placeholder="Password">
                </div>
                
                <div class="form-group">
                 <label>Repeat Password:</label>
                <input type="password" name="password2" placeholder="Repeat Password">
                </div>
                
                <div class="form-group">
                <label>Year of Graduation:</label>
                <select name="yearGraduated">
                    <option value="2014">2014</option>
                    <option value="2015">2016</option>
                    <option value="2016">2016</option>
                </select>
                </div>
                
                <div class="form-group">
                <label>Degree:</label>  
                <select name="degree">
                    <option value="bs">BS</option>
                    <option value="msba">MSBA</option>
                    <option value="mba">MBA</option>
                </select>
                </div>
                
                <div class="form-group">
                <label>Major:</label>  
                <select name="major">
                    <option value="accounting">Accounting</option>
                    <option value="cis">CIS</option>
                    <option value="finance">Finance</option>
                    <option value="management">Management</option>
                    <option value="marketing">Marketing</option>
                    <option value="msba">MSBA</option>
                    <option value="mba">MBA</option>
                </select>
                </div>
                
                <button type="submit" class="btn btn-default">Submit</button>
                
            </form>
            
        </div>

<br>
<%@include file="footer.jsp" %>