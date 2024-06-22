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
 * Servlet implementation class deleteRegistrationServlet
 */
public class deleteRegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Retrieve the "id" parameter from the HTTP POST request, which represents the registration to be deleted
		String id = request.getParameter("id");
		
		boolean isTrue;
		
		// Call the RegistrationDBUtil to delete the registration
		isTrue = RegistrationDBUtil.deleteRegistration(id);
		
		if(isTrue == true) {
			
			// If the deletion was successful, forward the request to the "insertRegistration.jsp" page
			RequestDispatcher dispatcher = request.getRequestDispatcher("insertRegistration.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			// If the deletion was not successful, retrieve registration details and forward to the "registrationAccount.jsp" page
			List<Registration> regDetails = RegistrationDBUtil.getRegistrationDetails(id);
			
			request.setAttribute("regDetails", regDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("registrationAccount.jsp");
			dispatcher.forward(request, response);
			
		}
		
	}

}
