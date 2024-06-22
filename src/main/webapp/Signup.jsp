<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Planning System Signup</title>
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
    
    <link rel="stylesheet" href="css\signup.css">
    <link rel="stylesheet" href="css\home.css">
    <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
    
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
        </body>
        </html>
</head>
<body>
<style>
   body {
            
         background-image: url("css/images/signup.jpg");
         font-family: 'Times New Roman';
        }
        footer {
    background-color: #222; /* Dark background for footer */
    padding: 10px;
    text-align: left;
}
h1 {
    text-align: center;
    color:#fff;
}
</style>
    <br><br><br><br>
    <div class="container">
        <h1>Signup </h1>
        <form id="signupForm" action="Signin.jsp" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <label for="confirmPassword">Confirm Password:</label>
            <input type="password" id="confirmPassword" name="confirmPassword" required><br>

            <button type="submit">Sign Up</button>
        </form>
        <p id="errorText"></p>
    </div>
    <script src="js\signup.js"></script><br><br><br>
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