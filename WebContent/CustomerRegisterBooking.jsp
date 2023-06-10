<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
		<link rel="stylesheet" href="assets/css/Custom.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<title>Booking Page | Hall Booking System</title>
		<script type="text/javascript">
			function setStaffID() {
				document.getElementById("custid").value = sessionStorage.getItem("loginID");
			}
			
			function setURL() {
				let loginID = sessionStorage.getItem("loginID");
				document.getElementById("viewBooking").href = "CustomerViewBooking.jsp?loginID=" + loginID;
				document.getElementById("viewProfile").href = "/CustomerController?action=viewProfile&custid=" + loginID;
			}
		</script>
	</head>
	<body onload="setStaffID(); setURL()">
		<div class="nav-bar"> 
			<a href="CustomerMainPage.jsp">Home</a> 
			<a id="viewBooking">Booking</a>
			<a class="active" href="CustomerRegisterBooking.jsp">Add Booking</a> 
			<a id="viewProfile">Edit Profile</a>
			<a href="CustomerLogin.jsp" style="float:right"><i class="fa fa-sign-out" class="split"></i> Logout</a> 
		</div>
		<div class="card w-50" style="margin: 10px auto">
			<h5 class="card-header"><b>ADD BOOKING</b></h5>
			<div class="card-body">
				<form action="CustomerAddBookingFunction.jsp" method="post" id="wizard">
					<label class="form-label">Customer ID :</label>
					<input type="text" class="form-control mb-2" name="custid" id="custid" readonly>
					
					<label class="form-label">Booking Date <span class="text-danger fw-bold">*</span> :</label>
					<input type="date" class="form-control mb-2" id="bookingdate" name="bookingdate" required>
					
					<label class="form-label">Booking Time :</label>
					<div style="text-indent: 20px"><input type="radio" name="bookingtime" id="bookingtime" value="08:00 AM - 05:00 PM"> 08:00 AM - 05:00 PM</div>
					<div style="text-indent: 20px"><input type="radio" name="bookingtime" id="bookingtime" value="05:00 PM - 12:00 AM"> 05:00 PM - 12:00 AM</div>
					<div class="mb-2"></div>

					<label class="form-label">Booking Description :</label>
					<input type="text" class="form-control mb-2" id="bookingdescription" name="bookingdescription">
					
					<label class="form-label">Booking Estimate Capacity :</label>
					<input type="text" class="form-control mb-2" id="bookingestimatecapacity" name="bookingestimatecapacity">
					<!--
					<label class="form-label">Booking Price (RM) :</label>
					<input type="text" class="form-control mb-2" id="bookingprice" name="bookingprice">
					-->
					<br>
					<div class="row">
						<div class="col"></div>
						<div class="col"></div>
						<div class="col input-group">
							<span class="input-group-text text-white bg-success bg-opacity-75 border border-success">
								<i class="fa fa-check"></i>
							</span>
							<input class="btn btn-success w-75" type="submit" value="Add">
						</div>
						<div class="col input-group">
							<span class="input-group-text text-black bg-warning bg-opacity-75 border border-warning">
								<i class="fa fa-refresh"></i>
							</span>
							<input class="btn btn-warning w-75" type="reset" value="Reset">
						</div>
					</div>
				</form>
			</div>
		</div>
	</body>
</html>