<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<style>
	table {
	  font-family: arial, sans-serif;
	  border-collapse: collapse;
	  width: 95%;
	  margin:auto;
	}
	
	td, th {
	  border: 1px solid #dddddd;
	  text-align: center;
	  padding: 8px;
	}
	
	tr:nth-child(even) {
	  background-color: #dddddd;
	}
	.button {
	  border: none;
	  color: black;
	  padding: 10px 22px;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  font-size: 16px;
	  margin: 2px 2px;
	  transition-duration: 0.4s;
	  cursor: pointer;
	}
	.button2 {
	  background-color: #52BE80; 
	  color: black; 
	  border: 2px solid #52BE80;
	}
	
	.button2:hover {
	  background-color: #52BE80;
	  color: black;
	}
	</style>
	<div class="navbar"> 
		 <a href="AdminMainPage.jsp"><i class="split"></i> Home</a> 
		 <a href="StaffView.jsp"><i class="split"></i> Staff</a>
		 <a href="ListCustomer.jsp"><i class="split"></i> Customer</a> 
		 <a href="ServicerView.jsp"><i class="" class="split"></i> Servicer</a> 
		 <a href="staffListMaintenance.jsp"><i class="" class="split"></i> Maintenance</a>
		 <a href="AssetsController?action=list"><i class="" class="split"></i> Assets</a> 
		 <a class="active" href="StaffListBooking.jsp"><i class="split"></i> Booking</a> 
		 
		 <li style="float:right"><a href="#"><i class="fa fa-sign-out" class="split"></i> Logout</a> 
		</div> 
<body>
	<div class="container" style=text-align:center>
  	<form action="StaffAddBookingFunction.jsp" method="post" id="wizard">
	<h1>Register Booking</h1>
	<div class="form">   
	
			<br><br> 
			<label for="bookingid">ID: <br>
		    <input type="text"  name="bookingid" id="bookingid" required><br>
    		</label><br>
    		
    		 
			<label for="staffid">STAFF ID: <br>
		    <input type="text"  name="staffid" id="staffid" required><br>
    		</label><br>
    		
    		<label for="bookingdate">BOOKING DATE:<br>
    		<input type="date" id="bookingdate" name="bookingdate"  > <br>
    		</label><br>
    		
    		<label for="bookingtime">BOOKING TIME:<br>
    		<input type="radio" name="bookingtime" id="bookingtime" value="8:00 am to 5:00 pm" class="form-control"/>8:00 am to 5:00 pm
			<input type="radio" name="bookingtime" id="bookingtime" value="5:00 pm to 12:00 am" class="form-control"/>5:00 pm to 12:00 pm <br>
    		</label><br>
    		<label for="bookingdescription">BOOKING DESCRIPTION:<br>
    		<input type="text" id="bookingdescription" id="bookingdescription" name="bookingdescription" ><br>
    		</label><br>
    		<label for="bookingestimatecapacity">BOOKING ESTIMATE CAPACITY:<br>
    		<input type="text" id="bookingestimatecapacity" name="bookingestimatecapacity"  ><br>
    		</label><br>
    		<label for="bookingprice">BOOKING PRICE:<br>
    		<input type="text" id="bookingprice" name="bookingprice"  ><br>
    		</label><br>
    		<input type="submit" value="Submit"> <br>
  		</form>
  	</div>
<a href="StaffListBooking.jsp"><button class="button">BACK</button></a> 
</body>
</html>