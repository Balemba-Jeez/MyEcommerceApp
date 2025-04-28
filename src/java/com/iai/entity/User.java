/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.iai.entity;


/**
 *
 * @author acer
 */
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Column;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


@Entity  // Tells JPA this class maps to a database table
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Auto-increment ID
    private Long id;

    @Column(nullable = false)
    private String name;

    @Column(unique = true, nullable = false)
    private String email;

    @Column
    private String password;

    // Constructors
    public User() {}

    public User( String name, String email, String password) {
//        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
    }
    
    // Method to save user into database
    public void save() {
        try {
            Connection conn = com.iai.connection.DatabaseConnection.getConnection();
            String sql = "INSERT INTO users (name, email, password) VALUES (?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, email);
            stmt.setString(3, password);
            stmt.executeUpdate();
            System.out.println("User saved!");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    
    // Getters and Setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
    
    public static void main(String[] args) {
    User newUser = new User("John Doe", "john@example.com", "abcde");
    newUser.save();
}

    
}


