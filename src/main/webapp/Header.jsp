<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
          <style>
        .center-text{
            text-align: center;
        }
    </style>
    </head>
    <body>
    
        <header>

            <nav class="navbar navbar-inverse">

                <div class="container-fluid">
                    <div class="navbar-header">

                        <a class="navbar-brand" href="#"><b style="font-size:30px;">Elegant and Elite Events</b></a>

                    </div>
                    <ul class="nav navbar-nav">

                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="Navigate.jsp">Book now</a></li>
                        <li><a href="Signup.jsp">Sign Up</a></li>
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