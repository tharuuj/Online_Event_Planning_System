package com.registration;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Servlet implementation class UpdateRegistrationServlet
 */
public class UpdateRegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Retrieve parameters from the HTTP POST request
		String id = request.getParameter("id");
		String fname = request.getParameter("first_name");
		String lname = request.getParameter("last_name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String eventType = request.getParameter("event_type");
		String eventName = request.getParameter("event_name");
		String date = request.getParameter("event_date");
		String area = request.getParameter("area");
		String guestCount = request.getParameter("guest_count");
		String hotel = request.getParameter("hotel");
		String comment = request.getParameter("comments");
		
		boolean isTrue;
		
		//Call the RegistrationDBUtil to update registration data
		isTrue = RegistrationDBUtil.updateregistration(id, fname, lname, email, phone, address, eventType, eventName, date, area, guestCount, hotel, comment);
		
		if(isTrue == true) {
			
			// If the update was successful, retrieve updated registration details
			List<Registration> regDetails = RegistrationDBUtil.getRegistrationDetails(id);
			request.setAttribute("regDetails", regDetails);
			
			// Forward the request to the registrationAccount.jsp page
			RequestDispatcher dis = request.getRequestDispatcher("registrationAccount.jsp");
			dis.forward(request, response);
		}
		else {
			
			// If the update was not successful, also retrieve registration details and forward to the registrationAccount.jsp
			List<Registration> regDetails = RegistrationDBUtil.getRegistrationDetails(id);
			request.setAttribute("regDetails", regDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("registrationAccount.jsp");
			dis.forward(request, response);
		}
	}

}
