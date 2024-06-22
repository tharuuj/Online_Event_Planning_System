<!-- Jayasooriya D.P.T.N -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Event Registration Form</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<style type="text/css">
    body{
        background-image: url("css/images/lBlue.jpg");
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: cover;
    }
    #registration-form{
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
    <div class="col-md-12">
            <form id="registration-form" action="InsertCustomer" method="post" >
                <h2>Personal Information</h2>
                <hr>
                <div class="row">
                    <div class="col-md-6">
                        <label>First Name:</label>
                        <input type="text" class="form-control" name="first_name" placeholder="First Name" required>
                    </div>
                    <div class="col-md-6">
                        <label>Last Name:</label>
                        <input type="text" class="form-control" name="last_name" placeholder="Last Name" required>
                    </div>
                    <div class="col-md-6">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" name="email" placeholder="Email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}" required>
                    </div>
                    <div class="col-md-6">
                        <label for="phone">Phone number:</label>
                        <input type="tel" class="form-control" name="phone" placeholder="Phone Number" pattern="^\d{10}$" required>
                    </div>
                    <div class="col-md-12">
                        <label for="address">Address:</label>
                        <textarea name="address" rows="3" class="comment-textarea form-control" placeholder="Address" required></textarea>    
                    </div>
                </div>
                <br>
                <h2>Event Information</h2>
                <hr>
                <div class="row">
                    <div class="col-md-6">
                        <label for="event_type">Event Type:</label>
                        <select name="event_type" class="event-type-select form-control" required>
                            <option value="Wedding">Wedding</option>
                            <option value="Adults Birthday">Adults Birthday</option>
                            <option value="Baby Shower">Baby Shower</option>
                            <option value="Bridal Shower">Bridal Shower</option>
                            <option value="Kids Birthday">Kids Birthday</option>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label for="event_name">Event Name:</label>
                        <input type="text" name="event_name" class="form-control" placeholder="Event Name" required>
                    </div>
                    <div class="col-md-6">
                        <label for="event_date">Date and Time:</label>
                        <input type="datetime-local" name="event_date"  class="form-control" placeholder="Date and Time" required><br>
                    </div>
                </div>
                <br>
                <h2>Location Information</h2>
                <div class="row">
                    <div class="col-md-6">
                        <label for="area">Select the area of the event:</label>
                        <select name="area" class="form-control" id="area" onchange="filterHotels()" required>
                            <option value="" disabled selected>Select the area</option>
                            <option value="Colombo">Colombo</option>
                            <option value="Negombo">Negombo</option>
                            <option value="Kandy">Kandy</option>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label for="guest_count">Select the guest count:</label>
                        <select name="guest_count" class="form-control" id="guest_count" onchange="filterHotels()" required>
                            <option value="" disabled selected>Select the guest count</option>
                            <option value="1-150">1-150</option>
                            <option value="1-250">1-250</option>
                            <option value="1-350">1-350</option>
                        </select>
                    </div>
                    <div class="col-md-6">
                    <label for="hotel">Select the hotel:</label>
                        <select name="hotel" class="form-control" id="hotel" required>
                            <option value="" disabled selected>Select the hotel</option>
                        </select>
                    </div>
                    <hr>
                    <div class="col-md-12">
                        <label for="comment">Comments:</label>
                        <textarea name="comment" class="form-control" id="comment" placeholder="Type your comments here..."></textarea>
                    </div>
                </div>    
                <div class="row" style="margin-top: 15px;">
                    <div class="col-md-12">                        
                        <input type="submit" class="btn btn-success" value="Submit" class="submit-button">
                    </div>
                </div>          
            </form>
    </div>
</div>


	
    <script>
        function filterHotels() {
            var area = document.getElementById("area").value;
            var guestCount = document.getElementById("guest_count").value;
            var hotelDropdown = document.getElementById("hotel");

            // Define the available hotels based on area and guest count
            var availableHotels = {
                "Colombo-1-150": ["Galadari Orchid", "Hilton Ballroom 1","Taj Samudra","Movenpick Colombo"],
                "Colombo-1-250": ["Galadari Anthurium", "Shangri-La Colombo","Grandbell Hotel","The Kingsbury Colombo"],
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
    </script>

</body>
</html>