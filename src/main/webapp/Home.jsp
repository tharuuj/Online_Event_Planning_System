<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="ISO-8859-1">
    <title>Event Planning System</title>
    <link rel="stylesheet" type="text/css" href="css\home.css">
	<%@include file="Header.jsp" %>
  
   </head>
   <body>  
   
            <br><br>

            <div class="container">

                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                        <li data-target="#myCarousel" data-slide-to="3"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="css/images/b (2).jpg" alt="Los Angeles" style="width:100%;">
                        </div>

                        <div class="item">
                            <img src="css/images/f.jpg" alt="Chicago" style="width:100%;">
                        </div>

                        <div class="item">
                            <img src="css/images/e.jpg" alt="New york" style="width:100%;">
                        </div>

                        <div class="item">
                            <img src="css/images/d.jpg" alt="New york" style="width:100%;">
                        </div>
                    </div>

                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>

     


<section class="services">
    <div class="service">
        <b><h2>Weddings</h2></b>
        <p>Our expert team specializes in creating unforgettable wedding experiences. From elegant decor to seamless coordination, we'll transform your dream wedding into reality.</p>
    </div>
    <div class="service">
        <b> <h2>Birthday Parties</h2></b>
        <p>Celebrate special birthdays with style and creativity. Our team is skilled at planning and organizing fun-filled birthday parties that will leave a lasting impression.</p>
    </div>
    <div class="service">
        <b><h2>Corporate Events</h2></b>
        <p> For your corporate gatherings and conferences, we provide professional event planning services. Our attention to detail ensures a successful and impactful event for your organization.</p>
    </div>
    <div class="service">
        <b><h2>Anniversaries</h2></b>
        <p>Commemorate your love and commitment with a beautifully orchestrated anniversary celebration. We'll handle all the details so you can focus on each other.</p>
    </div>
    <div class="service">
        <b><h2>Special Occasions</h2></b>
        <p> From milestone anniversaries to family reunions, we specialize in making every special occasion a memorable one. Our team will create an atmosphere that brings your vision to life.</p>
    </div>
    <div class="service">
        <b><h2>Outdoor Events</h2></b>
        <p>Embrace the beauty of outdoor events with our planning expertise. Whether it's a garden party or an open-air concert, we'll make it perfect.</p>
    </div>
</section>

<!-- Footer -->
<%@include file="Footer.jsp" %>

</body>
</html>
