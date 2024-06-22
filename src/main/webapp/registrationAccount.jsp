<!-- Jayasooriya D.P.T.N -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<style>
		body{
	        background-image: url("css/images/purple1.jpg");
	        background-repeat: no-repeat;
	        background-attachment: fixed;
	        background-size: cover;
	    }
	    .event-Details{
	        max-width: 1000px;
	        background: #fff;
	        margin: 0px auto;
	        margin-top: 30px;
	        padding: 30px;
	        border-radius: 10px;
	    }
	</style>
</head>
<body>
	<div class="row">
		<div class="container event-Details">
			<h1 class="title">Event Registration Details</h1>
			<div class="row">
				<div class="col-md-12">
					<table class="table table-striped">
					
						<!-- Iterate over registration details using JSTL -->
						
						<c:forEach var="reg" items="${regDetails}">
						
							<!-- Set variables for each attribute of registration -->
							<c:set var="id" value="${reg.id}"/>
							<c:set var="fname" value="${reg.fname}"/>
							<c:set var="lname" value="${reg.lname}"/>
							<c:set var="email" value="${reg.email}"/>
							<c:set var="phone" value="${reg.phone}"/>
							<c:set var="address" value="${reg.address}"/>
							<c:set var="eventType" value="${reg.eventType}"/>
							<c:set var="eventName" value="${reg.eventName}"/>
							<c:set var="date" value="${reg.datenTime}"/>
							<c:set var="area" value="${reg.area}"/>
							<c:set var="guestCount" value="${reg.guestCount}"/>
							<c:set var="hotel" value="${reg.hotelName}"/>
							<c:set var="comments" value="${reg.comment}"/>
						<tr style="background: #ccc;">
							<th>Registration ID</th>
							<td colspan="3">${reg.id}</td>
						</tr>
						<tr>
							<th>First Name</th>
							<td>${reg.fname}</td>
							<th>Last Name</th>
							<td>${reg.lname}</td>
						</tr>
						<tr>
							<th>Email</th>
							<td>${reg.email}</td>
							<th>Phone</th>
							<td>${reg.phone}</td>
						</tr>
						<tr>
							<th>Address</th>
							<td>${reg.address}</td>
							<th>Event Type</th>
							<td>${reg.eventType}</td>
							
						</tr>
						<tr>
							<th>Event Name</th>
							<td>${reg.eventName}</td>
							<th>Date and Time</th>
							<td>${reg.datenTime}</td>
							
						</tr>
						<tr>
							<th>Area</th>
							<td>${reg.area}</td>
							<th>Guest Count</th>
							<td>${reg.guestCount}</td>
							
						</tr>
						<tr>
							<th>Hotel Name</th>
							<td>${reg.hotelName}</td>
							<th>Comments</th>
							<td>${reg.comment}</td>
						</tr>
						</c:forEach>
					</table>
				</div>
				
				<!-- Create URLs for updating and deleting registration records -->
				<div class="col-md-12">
					<c:url value="updateRegistration.jsp" var="regupdate">
		
					<c:param name="id" value="${id}"/>
					<c:param name="fname" value="${fname}"/>
					<c:param name="lname" value="${lname}"/>
					<c:param name="email" value="${email}"/>
					<c:param name="phone" value="${phone}"/>
					<c:param name="address" value="${address}"/>
					<c:param name="eventType" value="${eventType}"/>
					<c:param name="eventName" value="${eventName}"/>
					<c:param name="date" value="${date}"/>
					<c:param name="area" value="${area}"/>
					<c:param name="guestCount" value="${guestCount}"/>
					<c:param name="hotelName" value="${hotel}"/>
					<c:param name="comment" value="${comments}"/>
					
				</c:url>

				<!-- Create a link for updating the registration record -->
				<a href="${regupdate}">
					<input type="button" class="btn btn-warning" name="update" value="Update My Data">
				</a>

				<c:url value="deleteRegistration.jsp" var="regdelete">
					
					<c:param name="id" value="${id}"/>
					<c:param name="fname" value="${fname}"/>
					<c:param name="lname" value="${lname}"/>
					<c:param name="email" value="${email}"/>
					<c:param name="phone" value="${phone}"/>
					<c:param name="address" value="${address}"/>
					<c:param name="eventType" value="${eventType}"/>
					<c:param name="eventName" value="${eventName}"/>
					<c:param name="date" value="${date}"/>
					<c:param name="area" value="${area}"/>
					<c:param name="guestCount" value="${guestCount}"/>
					<c:param name="hotelName" value="${hotel}"/>
					<c:param name="comment" value="${comments}"/>
											
				</c:url>

				<!-- Create a link for deleting the registration record -->
				<a href="${regdelete}">
				<input type="button" name="delete" class="btn btn-danger" value="Delete My Data">
				</a>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>