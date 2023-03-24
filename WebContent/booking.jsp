<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Booking</title>
<link href="css/ABooking.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/customernavigation.css"> 
<link rel="stylesheet" href="css/bookingForm.css"> 
</head>
<body>
<div class="navbar"> 
 <a href="#"><i class="fa fa-home" class="split"></i> Home</a> 
 <a href="#"><i class="" class="split"></i> Assets</a> 
 <a href="#"><i class="" class="split"></i> Maintenance</a> 
 <a href="#"><i class="" class="split"></i> Servicer</a> 
 <a class="active" href="#"><i class="" class="split"></i> Booking</a> 
 <a href="#"><i class="fa fa-users" class="split"></i> Customer</a> 
   <li style="float:right"><a href="#"><i class="fa fa-sign-out" class="split"></i> Logout</a> 
</div>

	<form action="staffAddBookingProcess.jsp" method="post" id="wizard">
	<section>
		<div class="wrapper">
				<div class="form-container">
				<h2 style="text-align:center;"> Make Booking </h2> 
				     <div class="input-username">
						<input type="date" placeholder="Enter Date" name="bookingDate"  autocomplete="off" required><br><br>
				    </div>
				    
				    <div class="input-time">
						<input type="time" placeholder="Enter Time" name="bookingTime" autocomplete="off" required><br><br>
				    </div>
				    
					<div class="input-description">
						
						<input type="text" placeholder="Enter Description" name="bookingDescription" autocomplete="off" required><br><br>
					</div>
					
					<div class="input-capacity">
						
						<input type="text" placeholder="Enter Capacity" name="bookingEstimateCapacity" autocomplete="off" required><br><br>
					</div>
					
					<div class="input-price">
						
						<input type="text" placeholder="Enter Price" name="bookingPrice" autocomplete="off" required><br><br>
					</div>
            </div>
            <button class="button" value="Submit" name="submit">SUBMIT</button>	
         </div>
	</section>
	</form>
	<a href="staffViewBooking.jsp"><button class="button">BACK</button></a> 

</body>
</html>