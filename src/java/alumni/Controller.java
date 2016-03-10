/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package alumni;

import java.sql.*;
import java.util.HashSet;


/**
 *
 * @author alejandrok
 */
public class Controller {
    
    private String DBurl = "jdbc:mysql://localhost:3306/cpp-alumni";
    private String username = "alejandro";
    private String pass = "Test123";
    
    public void Controller() {
        
    }
    
    public User getUser(String email) {
       
        User user = new User();
        try {
        Connection conn = connectToDB();
        conn = DriverManager.getConnection(DBurl, username, pass);
        String query = "SELECT * FROM users WHERE email = ?";
        PreparedStatement ps = conn.prepareStatement(query);
        ResultSet rs = ps.executeQuery();
        
        while(rs.next()) {
            
            
            user.setUserId(rs.getInt("id"));
            user.setFirstName(rs.getString("first_name"));
            user.setLastName(rs.getString("last_name"));
            user.setEmail(rs.getString("email"));
   
        }

        }

        catch(SQLException e ) {
            e.getMessage();
        }
        return user;
    }
    
    @SuppressWarnings("empty-statement")
    public Connection connectToDB() {
        Connection conn = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
        }
        
        catch (ClassNotFoundException e) {
            e.getException();
            
        }
        
        try {
    
    
   
    conn = DriverManager.getConnection(DBurl, username, pass);
    
   
   
    if (conn.isValid(10)) {
        System.out.println("Connection succesful!!");
    }
    
    else {
        System.out.println("Connection failed");
    }
    
    
        
        }
    
    catch (SQLException e) {
        for (Throwable t : e )
            t.printStackTrace();
    }
           
           return conn;
    
    }
    
    public boolean doesEmailExist(String email) {
       
        
        boolean exists = false;
        
        /* TEMPORARY way to connect to db */
         
    
    /* END OF TEMPORARY WAY TO CONNECT TO DB */
        
    
    
    try {
        //prepare SQL query and execute
        String query = "SELECT * FROM users WHERE email = " + "\'" + email + "\'";
         
        Connection conn = connectToDB();
        conn = DriverManager.getConnection(DBurl, username, pass);
        Statement stmt = conn.createStatement();
       
        
      
        
        System.out.println("executed query");
        ResultSet result = stmt.executeQuery(query);
       
        
        if (result.first()) {
            System.out.println("result exists");
            exists = true;
        }
        
        else {
            System.out.println("result does NOT exist");
            exists = false;
        }
        
        
        }
        
        catch (SQLException e) {
            e.getMessage();
        }
        
        
       
        return exists;
    }
    
    public boolean doesPasswordExist(String email, String password) {
        
          boolean passExists = false;
    try {
        //prepare SQL query and execute
      String query = "SELECT * FROM users WHERE password = " + "\'" + password + "\'";
         
        Connection conn = connectToDB();
        conn = DriverManager.getConnection(DBurl, username, pass);
        Statement stmt = conn.createStatement();
       ResultSet result = stmt.executeQuery(query);
        
       
      // PreparedStatement ps = conn.prepareStatement(query);
       //ps.setString(1, password);
        //ResultSet result = ps.executeQuery(query);

        if (result.next()) {
            String p = result.getString("password");
     
            if (password.equals(p)) {
                System.out.println("passwords are equal");
                passExists = true;
               
            }
            
            //temporary
            System.out.println("result exists");
            passExists = true;
        }
        
        else {
            System.out.println("result does NOT exist");
            passExists = false;
        }
        
        
        }
        
        catch (SQLException e) {
            e.getMessage();
        }
        
        
       
        return passExists;

    }

    
    
    public void registerUser(String firstName, String lastName, String email, String password, 
            String graduatedYear, String degree, String major) {
        
       try {
        //connect to DB
        Connection conn = connectToDB();
        conn = DriverManager.getConnection(DBurl, username, pass);
        
        String query = "INSERT INTO users "
                + "(first_name, last_name, email, password, year_graduated, degree, major)"
                + " VALUES (?, ?, ?, ?, ?, ?, ?)";
        
        PreparedStatement ps = conn.prepareStatement(query);

     ps.setString(1, firstName);
     ps.setString(2, lastName);
    
     ps.setString(3, email);
     ps.setString(4, password);
     ps.setString(5, graduatedYear);
     ps.setString(6, degree);
     ps.setString(7, major);
     
     ps.executeUpdate();

       }
       
       catch (SQLException e) {
           e.getMessage();
       }
    
    }
    
    
    public void updatePersonalInfo(String email, String phone, String description) {
        
        try {
        //connect to DB
        Connection conn = connectToDB();
        conn = DriverManager.getConnection(DBurl, username, pass);
        
        String query = "UPDATE users SET phone = ?, description = ? WHERE email = ?";
 
        PreparedStatement ps = conn.prepareStatement(query);
        
        
        ps.setString(1, phone);
        ps.setString(2, description);
        ps.setString(3, email);
        
        ps.executeUpdate();
        
        }
        
        
        catch (SQLException e) {
            e.getMessage();
        }
        
    }
    
    public void updateWorkInfo(String email, String employer, String position, String workPhone) {
        
        try {
        //connect to DB
        Connection conn = connectToDB();
        conn = DriverManager.getConnection(DBurl, username, pass);
        
        String query = "UPDATE employment SET employer = ?, position = ?, work_phone = ? WHERE user_id = ?";
        
        
        String q = "INSERT INTO employment (user_id, employer, position, work_phone, email )" +
                   "VALUES (?, ?, ?, ?, ?)";
                
 
        
        PreparedStatement ps = conn.prepareStatement(q);
               ps.setString(1, email);
               ps.setString(2, employer);
               ps.setString(3, position);
               ps.setString(4, workPhone);
               ps.setString(5, email);
 
        ps.executeUpdate();
        
        }
        
        catch (SQLException e) {
            e.getMessage();
        }
        
    }
   




}


