<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="assets/css/ABooking.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="assets/css/customernavigation.css"> 
<link rel="stylesheet" href="assets/css/staffadd.css"> 
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Register Booking Hall</title>
<link rel="stylesheet" href="RegisterBookingHall.css">
</head>
<body>
	<div class="navbar"> 
		 <a href="AdminMainPage.jsp"><i class="split"></i> Home</a> 
		 <a class="" href="StaffView.jsp"><i class="split"></i> Staff</a>
		 <a href="ListCustomer.jsp"><i class="split"></i> Customer</a> 
		 <a href="ServicerView.jsp"><i class="" class="split"></i> Servicer</a> 
		 <a href="staffListMaintenance.jsp"><i class="split"></i> Maintenance</a>
		 <a href="AssetsController?action=list"><i class="" class="split"></i> Assets</a> 
		 <a  class="active" href="StaffListBooking.jsp"><i class="split"></i> Booking</a> 
		 
		 <li style="float:right"><a href="#"><i class="fa fa-sign-out" class="split"></i> Logout</a> 
		</div> 
	</div>
	<h1>Register Booking</h1>
	<div class="form">
 		<form action="BookingController" method="post" id="wizard">
    		<label for="bookingdate">Booking Date:
    		<input type="date" id="bookingdate" name="bookingdate" placeholder="Booking Date">
    		</label><br>
    		<label for="bookingtime">Booking Time:
    		<input type="radio" name="bookingtime" id="bookingtime" value="8:00 am to 5:00 pm" class="form-control"/>8:00 am to 5:00 pm
			<input type="radio" name="bookingtime" id="bookingtime" value="5:00 pm to 12:00 am" class="form-control"/>5:00 pm to 12:00 pm
    		</label><br>
    		<label for="bookingdescription">Booking Description:
    		<input type="text" id="bookingdescription" id="bookingdescription" name="bookingdescription" placeholder="Booking Description">
    		</label><br>
    		<label for="bookingestimatecapacity">Booking Estimate Capacity:
    		<input type="text" id="bookingestimatecapacity" name="bookingestimatecapacity" placeholder="Booking Estimate Capacity">
    		</label><br>
    		<label for="bookingprice">Booking Price:
    		<input type="text" id="bookingprice" name="bookingprice" placeholder="Booking Price">
    		</label><br>
    		<input type="submit" value="Submit">
  		</form>
  	</div>
</body>
</html>