package com.registration;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	// Database connection configuration
	private static String url = "jdbc:mysql://localhost:3306/event_planning_system";
	private static String userName = "root";
	private static String password = "tHaru823";
	
	private static Connection con;  // Database connection object
	
	// Method to establish database connection
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");   // Load the MySQL JDBC driver
			
			// Establish a connection to the database using the provided URL, userName, and password
			con = DriverManager.getConnection(url, userName, password);
		}
		catch(Exception e) {
			// Handle exceptions if the connection fails
			System.out.println("Database connection is not success!!!");
		}
		
		// Return the database connection object
		return con;
	}
}
