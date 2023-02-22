<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Booking Hall</title>
<link rel="stylesheet" href="RegisterBookingHall.css">
</head>
<body>
	<div class="header">
        <div class="header-right">
            <a class="" href="AdminMainPage.html">Home</a>
            <a href="active">Booking</a>
            <a href="">Edit Profile</a>
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