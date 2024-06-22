package com.registration;

//Registration Class represents encapsulation and constructor,getters,private instance variables are part of Encapsulation
//Attributes and methods are encapsulated in the Registration class
public class Registration {

	private int id;
	private String fname;
	private String lname;
	private String email;
	private String phone;
	private String address;
	private String eventType;
	private String eventName;
	private String datenTime;
	private String area;
	private String guestCount;
	private String hotelName;
	private String comment;
	
	//Constructor
	public Registration(int id, String fname, String lname, String email, String phone, String address,
			String eventType, String eventName, String datenTime, String area, String guestCount, String hotelName,
			String comment) {
		
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.eventType = eventType;
		this.eventName = eventName;
		this.datenTime = datenTime;
		this.area = area;
		this.guestCount = guestCount;
		this.hotelName = hotelName;
		this.comment = comment;
	}

	//Getter methods
	//use getter to access private member variables in order to achieve encapsulation and data hiding
	
	public int getId() {
		return id;
	}


	public String getFname() {
		return fname;
	}


	public String getLname() {
		return lname;
	}


	public String getEmail() {
		return email;
	}


	public String getPhone() {
		return phone;
	}


	public String getAddress() {
		return address;
	}


	public String getEventType() {
		return eventType;
	}


	public String getEventName() {
		return eventName;
	}


	public String getDatenTime() {
		return datenTime;
	}


	public String getArea() {
		return area;
	}


	public String getGuestCount() {
		return guestCount;
	}


	public String getHotelName() {
		return hotelName;
	}


	public String getComment() {
		return comment;
	}	
	
}
