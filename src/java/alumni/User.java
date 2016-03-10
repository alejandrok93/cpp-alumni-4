/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package alumni;

import java.io.Serializable;


/**
 *
 * @author James
 */

public class User {
 
    private int userId;
    private String email;
    private String firstName;
    private String lastName;
    private String diplomalastName;
    private String password;
private String yearGrad;
private String degree;
private String major;
private String phone;
 private String description;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }
    
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setdiplomaLastName(String diplomalastName) {
        this.diplomalastName = diplomalastName;
    }
     public String getdiplomaLastName() {
        return diplomalastName;
    }

    public void setpassword(String password) {
        this.password = password;
    }
     public String getpassword() {
        return password;
    }
     public void setyearGrad(String yearGrad) {
        this.yearGrad = yearGrad;
    }
     public String getyearGrad() {
        return yearGrad;
    }
     
     public void setdegree(String degree) {
        this.degree = degree;
    }
     public String getdegree() {
        return degree;
    }
     public void setmajor(String major) {
        this.major = major;
    }
     public String getmajor() {
        return major;
    }
     public void setphone(String phone) {
        this.phone = phone;
    }
     public String getphonee() {
        return phone;
    }
     public void setdescription(String description) {
        this.description = description;
    }
     public String getdescription() {
        return description;
    }
     
     
     
}