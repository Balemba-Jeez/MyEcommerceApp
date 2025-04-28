package com.iai.connection;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author acer
 */
//package your.package.name; // replace with your real package

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/MyEcommerceApp"; 
    private static final String USER = "root"; 
    private static final String PASSWORD = "r00t"; 

public static Connection getConnection() throws SQLException {
    Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
    System.out.println("✅ Database connected successfully!");
    return conn;
}

}

