package com.registration;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class RegistrationDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Validation method to retrieve event registration details=================================================================
	public static List<Registration> validate(String firstName, String phone){
		
		//Store objects of the Registration class inside the ArrayList
		ArrayList<Registration> reg = new ArrayList<>();
		
				
		//validate user inputs
		//Exception Handling
		try {
			
			//Hiding the complexity (implementation) and showing the features(Abstraction)
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT * FROM registration WHERE first_name='"+firstName+"' and phone='"+phone+"'";
			
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				//Retrieve data from the result set
				int id = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String email = rs.getString(4);
				String phoneNo = rs.getString(5);
				String address = rs.getString(6);
				String eventType = rs.getString(7);
				String eventName = rs.getString(8);
				String date = rs.getString(9);
				String area = rs.getString(10);
				String guestCount = rs.getString(11);
				String hotel = rs.getString(12);
				String comment = rs.getString(13);
				
				//Create a Registration object and add it to the list
				Registration r = new Registration(id,fname,lname,email,phoneNo,address,eventType,eventName,date,area,guestCount,hotel,comment);
				
				reg.add(r);
				
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
				
		return reg;
	}
	
	
	//Insert data into the registration table=========================================================================================
	
	public static boolean insertregistration(String fname,String lname,String email,String phone,String address,String eventType,String eventName,String date,String area,String guestCount,String hotel,String comments){
		
		boolean isSuccess = false;
				
		try {
					
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "INSERT INTO registration values (0,'"+fname+"','"+lname+"','"+email+"','"+phone+"','"+address+"','"+eventType+"','"+eventName+"','"+date+"','"+area+"','"+guestCount+"','"+hotel+"','"+comments+"')";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
	//Update registration data===============================================================================================================================
	
	public static boolean updateregistration(String id,String fname,String lname,String email,String phone,String address,String eventType,String eventName,String date,String area,String guestCount,String hotel,String comment) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update registration set first_name='"+fname+"', last_name='"+lname+"', email='"+email+"', phone='"+phone+"', address='"+address+"', event_type='"+eventType+"', event_name='"+eventName+"', datentime='"+date+"', area='"+area+"', guest_count='"+guestCount+"', hotel_name='"+hotel+"', comments='"+comment+"'" + "where id='"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	
	//Data retrieving===============================================================================================================
	
	public static List<Registration> getRegistrationDetails(String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList<Registration> reg = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from registration where id='"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String address = rs.getString(6);
				String eventType = rs.getString(7);
				String eventName = rs.getString(8);
				String date = rs.getString(9);
				String area = rs.getString(10);
				String guestCount = rs.getString(11);
				String hotel = rs.getString(12);
				String comment = rs.getString(13);
				
				Registration r = new Registration(id,fname,lname,email,phone,address,eventType,eventName,date,area,guestCount,hotel,comment);
				
				reg.add(r);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
	
		return reg;
	}
	
	
	//Delete registration data============================================================================================================
	
	public static boolean deleteRegistration(String id) {
		
		int convId = Integer.parseInt(id);
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "delete from registration where id='"+convId+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
}
