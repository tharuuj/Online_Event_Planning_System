<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
  
    <link rel="stylesheet" type="text/css" href="css\useraccount.css">
    <link rel="stylesheet" type="text/css" href="css\home.css">
   <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
         <!-- Style Css Link -->
    <link rel="stylesheet" href="css/footer.css">
    <!-- Style Css Link -->

    <!-- Font Awesome Cdn -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- Font Awesome Cdn -->

    <!-- Google Font links -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@500&display=swap" rel="stylesheet">
    <!-- Google Font links -->
    </head>
    <body>
     <style>

        body {
            font-family: 'Times New Roman';
            background-color: #f0f0f0;
            text-align: center;
            background-image: url("css/images/useraccount.jpg");
            background-size: cover
        }
        button {
	width: 200px;
    height: 200px;
    padding: 30px 30px;
    background-color:  rgb(128, 128, 128);
    color: #;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin: 10px; /* Increase the margin for more space between buttons */

}
    </style>
        <header>

            <nav class="navbar navbar-inverse">

                <div class="container-fluid">
                    <div class="navbar-header">

                        <a class="navbar-brand" href="#"><b style="font-size:30px;">Elegant and Elite Events</b></a>

                    </div>
                    <ul class="nav navbar-nav">

                        <li><a href="Home.jsp">Home</a></li>
                        <li><a href="Navigate.jsp">Book now</a></li>
                        <li class="active"><a href="Signup.jsp">Sign Up</a></li>
                        <li><a href="Signin.jsp">Sign in</a></li>
                        <li class="dropdown"> <!-- Dropdown Menu -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Packages <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li class="center-text"><a href="#">Food and Beverages</a></li>
                            <li class="center-text"><a href="#">Decorations</a></li>
                            <li class="center-text"><a href="#">Entertainment</a></li>
                            <li class="center-text"><a href="hotels.jsp">Hotels</a></li>
                            
                            </ul>
                            </li>


                    </ul>
                </div>
            </nav>

        </header>
    </head>
    <body>
        <br><br> 
        <div class="container">
           
            <div class="user-info">

                <!-- Display user information here (e.g., name, email, etc.) -->
            </div>
            <div class="user-actions">
                <button id="edit-customer" style="color:white; width:250px; height:100px;"><a href="eventregistration.jsp">Edit Customer Form</a></button>
                <button id="edit-event" style="color:white; width:250px; height:100px;">Edit Event Details Form</button>
                <button id="edit-payment" style="color:white; width:250px; height:100px;">Edit Payment Form</button>
            </div>
        </div>
       <footer id="footer">
    <div class="footer-content">
        <div class="row" id="row1">
            <a href="#" id="footer-logo">Elite and Elegant Events</a>
            <p>Elite and Elegant Events is an advanced event planning system designed to elevate the art of event coordination to new heights.</p>
            <div class="socail-links">
                <i class="fa-brands fa-twitter"></i>
                <i class="fa-brands fa-facebook-f"></i>
                <i class="fa-brands fa-instagram"></i>
                <i class="fa-brands fa-youtube"></i>
                <i class="fa-brands fa-pinterest-p"></i>
            </div>
        </div>
        <div class="row" id="row2">
            <h3>UseFull Links</h3>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Book Now</a></li>
                <li><a href="#">Signup</a></li>
                <li><a href="#">SignIn</a></li>
                
            </ul>
        </div>
        
        <div class="row" id="row4">
            <h3>Download App</h3>
            <img src="css/images/app.png" alt="foot">
        </div>
    </div>
</footer>
    </body>
</html>
