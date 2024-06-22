package com.registration;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


//Inherits where InsertCustomer inherits from HttpServlet
public class InsertCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	//Polymorphism where the doPost method is overidden and run time polymorphism where childclass override the doPost method
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Get the form parameters
		
		String fname = request.getParameter("first_name");
		String lname = request.getParameter("last_name");
		String email = request.getParameter("email");
		String phoneNo = request.getParameter("phone");
		String address = request.getParameter("address");
		String eventType = request.getParameter("event_type");
		String eventName = request.getParameter("event_name");
		String edate = request.getParameter("event_date");
		String area = request.getParameter("area");
		String guestCount = request.getParameter("guest_count");
		String hotel = request.getParameter("hotel");
		String comments = request.getParameter("comment");
		
		boolean isTrue;
		
		//Insert customer data into the database
		isTrue = RegistrationDBUtil.insertregistration(fname, lname, email, phoneNo, address, eventType, eventName, edate, area, guestCount, hotel, comments);

		//Redirect user to the appropriate page
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Navigate.jsp");
			dis.forward(request, response);
			
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
