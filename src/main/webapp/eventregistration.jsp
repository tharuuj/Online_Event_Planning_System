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
        background-image: url("css/images/green1.jpg");
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
            <form id="registration-form" action="RegistrationServlet" method="post" >
                <h2>Personal Information</h2>
                <hr>
                <br>
                <h6>If you have previously registered for an event, please complete the fields below !!</h6>
                <br>
                <hr>
                
                <div class="row">
                    <div class="col-md-6">
                        <label>First Name:</label>
                        <input type="text" class="form-control" name="first_name" placeholder="First Name" required>
                    </div>
                    <br>
                    <div class="col-md-6">
                        <label for="phone">Phone Number:</label>
                        <input type="tel" class="form-control" name="phone" placeholder="Phone Number" required>
                    </div>
                    
                </div>
                <br>
                
                <!-- Display my data button -->                
                <div class="row" style="margin-top: 15px;">
                    <div class="col-md-12">                        
                        <input type="submit" class="btn btn-success" value="Display My Data" class="submit-button">
                    </div>
                </div>          
            </form>
    </div>
</div>


</body>
</html>