package com.registration;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

//Inherits where RegistrationServlet inherits from HttpServlet
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Get the form parameters for the validation
		String fname = request.getParameter("first_name");
		String phone = request.getParameter("phone");
		
		//Validate the user credentials(First name , Phone)
		try {
		List<Registration> regDetails = RegistrationDBUtil.validate(fname, phone);
		
		//Set the request attribute with the validated user details
		request.setAttribute("regDetails", regDetails);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		//Forward the request to the registrationAccount.jsp page
		RequestDispatcher dis = request.getRequestDispatcher("registrationAccount.jsp");
		dis.forward(request, response);
		
	}

}
