<!-- Jayasooriya D.P.T.N -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Event Registration Delete</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<style>
    body{
          background-image: url("css/images/red.jpg");
          background-repeat: no-repeat;
          background-attachment: fixed;
          background-size: cover;
      }
      .Details{
          max-width: 1000px;
          background: #fff;
          margin: 0px auto;
          margin-top: 30px;
          padding: 30px;
          border-radius: 10px;
      }
  </style>
  
  <script>function showMessage(){
	alert("Your event registration details deleted successfully!");
	}
  </script>
  
</head>
<body>

	<%
		String id = request.getParameter("id");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String eventType = request.getParameter("eventType");
		String eventName = request.getParameter("eventName");
		String date = request.getParameter("date");
		String area = request.getParameter("area");
		String guestCount = request.getParameter("guestCount");
		String hotelName = request.getParameter("hotelName");
		String comments = request.getParameter("comment");
	
	%>
	
<!-- <h2>Event Registration Details Deletion</h2>     -->
<div class="row">
  <div class="container Details">
      <form action="deleteRegistrationServlet" method="post">
      <h3>Personal Information</h3>
      <div class="row">
      
      	<!-- Display and pre-fill personal information fields -->
        <div class="form-group col-md-6">
          <span>Registration ID:</span>
          <input type="text" class="form-control" name="id" value="<%= id%>" readonly>
        </div>
        <div class="form-group col-md-6">
          <span>First Name:</span>
          <input type="text" class="form-control" name="first_name" value="<%= fname%>" readonly>
        </div>
        <div class="form-group col-md-6">
          <span>Last Name:</span>
          <input type="text" class="form-control" name="last_name" value="<%= lname%>" readonly>
        </div>
        <div class="form-group col-md-6">
          <span>Email:</span>
          <input type="text" class="form-control" name="email" value="<%= email%>" readonly>
        </div>
        <div class="form-group col-md-6">
          <span>Phone number:</span>
          <input type="text" class="form-control" name="phone" value="<%= phone%>" readonly>
        </div>
        <div class="form-group col-md-6">
          <span>Address:</span>
          <input type="text" class="form-control" name="address" value="<%= address%>" readonly>
        </div>
        
        <!-- Display and pre-fill event information fields -->
        <div class="col-md-12">
          <h3>Event Information</h3>
        </div>
        <div class="form-group col-md-6">
          <span>Event type:</span>
          <select name="event_type" class="form-control" class="event-type-select" disabled>
          	<option value="" disabled selected>Select the event type</option>
            <option value="Wedding" <%= eventType.equals("Wedding") ? "selected" : "" %>>Wedding</option>
            <option value="Adults Birthday" <%= eventType.equals("Adults Birthday") ? "selected" : "" %>>Adults Birthday</option>
            <option value="Baby Shower" <%= eventType.equals("Baby Shower") ? "selected" : "" %>>Baby Shower</option>
            <option value="Bridal Shower" <%= eventType.equals("Bridal Shower") ? "selected" : "" %>>Bridal Shower</option>
            <option value="Kids Birthday" <%= eventType.equals("Kids Birthday") ? "selected" : "" %>>Kids Birthday</option>
          </select>
        </div>
        <div class="form-group col-md-6">
          <span>Event name:</span>
          <input type="text" class="form-control" name="event_name" value="<%= eventName%>" readonly>
        </div>
        <div class="form-group col-md-6">
          <span>Date and Time:</span>
          <input type="datetime-local" class="form-control" name="event_date" placeholder="Date and Time" value="<%= date%>" readonly><br>
        </div>
        
        <!-- Display and pre-fill location information fields -->
  	     <div class="col-md-12">
  	       <h3>Location Information</h3>
         </div>
        <div class="form-group col-md-6">
          <span>Area:</span>
          <select name="area" id="area" class="form-control" onchange="filterHotels()" disabled>
          	<option value="" disabled selected>Select the area</option>
              <option value="Colombo" <%= area.equals("Colombo") ? "selected" : "" %>>Colombo</option>
              <option value="Negombo" <%= area.equals("Negombo") ? "selected" : "" %>>Negombo</option>
              <option value="Kandy" <%= area.equals("Kandy") ? "selected" : "" %>>Kandy</option>
          </select>
        </div>
        <div class="form-group col-md-6">
          <span>Guest Count:</span>
          <select name="guest_count" id="guest_count" class="form-control" onchange="filterHotels()" disabled>
              <option value="" disabled selected>Select the guest count</option>
              <option value="1-150" <%= guestCount.equals("1-150") ? "selected" : "" %>>1-150</option>
              <option value="1-250" <%= guestCount.equals("1-250") ? "selected" : "" %>>1-250</option>
              <option value="1-350" <%= guestCount.equals("1-350") ? "selected" : "" %>>1-350</option>
          </select>

        </div>
        <div class="form-group col-md-6">
    	  <span>Hotel:</span>
    	  <select name="hotel" id="hotel" class="form-control" value="<%= hotelName%>" disabled>
        	  <option value="" disabled selected>Select the hotel</option>
        	  <!-- Hotel options are populated based on area and guest count -->
    	  </select>
		</div>

        <div class="form-group col-md-6">
          <span>Comments:</span>
          <input type="text" name="comments" class="form-control" value="<%= comments%>" readonly>
        </div>

	<!-- Delete button with an alert message -->
  	<input type="submit" value="Delete" class="submit-button form-control btn btn-danger" name="submit" onclick="showMessage()">
  	

      </form>
    </div>
  
  </div>
  
  <!-- Javascript to dynamically filter the hotel names according to the area and the guest count -->
  <script>
    function filterHotels() {
        var area = document.getElementById("area").value;
        var guestCount = document.getElementById("guest_count").value;
        var hotelDropdown = document.getElementById("hotel");

        // Define the available hotels based on area and guest count
        var availableHotels = {
            "Colombo-1-150": ["Galadari Orchid", "Hilton Ballroom 1", "Taj Samudra", "Movenpick Colombo"],
            "Colombo-1-250": ["Galadari Anthurium", "Shangri-La Colombo", "Grandbell Hotel", "The Kingsbury Colombo"],
            "Colombo-1-350": ["Galadari Grand Ballroom", "Hilton Union Ballroom", "Marino Beach Colombo"],
            "Negombo-1-150": ["Jetwing Lagoon"],
            "Negombo-1-250": ["Heritance Negombo Hall 01", "Jetwing Blue"],
            "Negombo-1-350": ["Pledge Scape Negombo", "Amagi Aria"],
            "Kandy-1-150": ["The Summit Hall 01"],
            "Kandy-1-250": ["Mahaweli Reach Hotel Hall 02"],
        };

        // Clear the current options in the hotel dropdown
        hotelDropdown.innerHTML = "";

        // Populate the hotel dropdown with the filtered options
        if (area && guestCount) {
            var key = area + "-" + guestCount;
            var hotels = availableHotels[key];
            if (hotels) {
                for (var i = 0; i < hotels.length; i++) {
                    var option = document.createElement("option");
                    option.text = hotels[i];
                    option.value = hotels[i];
                    hotelDropdown.add(option);
                }
            }
        }
    }

    // Call filterHotels() on page load
    filterHotels();

    // Add event listeners to the area and guest count selects
    document.getElementById("area").addEventListener("change", filterHotels);
    document.getElementById("guest_count").addEventListener("change", filterHotels);
</script>

  	

</body>
</html>