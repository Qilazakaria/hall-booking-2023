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
				document.getElementById("staffid").value = sessionStorage.getItem("loginID");
			}
			
			function setURL() {
				let loginID = sessionStorage.getItem("loginID");
				document.getElementById("staffView").href = "StaffView.jsp?loginID=" + loginID;
			}
		</script>
	</head>
	<body onload="setStaffID(); setURL()">
		<div class="nav-bar"> 
			<a href="AdminMainPage.jsp">Home</a>
			<a id="staffView">Staff</a>
			<a href="ListCustomer.jsp">Customer</a>
			<a href="ServicerView.jsp">Servicer</a>
			<a href="MaintenanceController?action=list">Maintenance</a>
			<a href="AssetsController?action=list">Assets</a>
			<a class="active" href="StaffListBooking.jsp">Booking</a>
			<a style="float:right" href="index.jsp"><i class="fa fa-sign-out" class="split"></i> Logout</a>
		</div>
		<div class="card w-50" style="margin: 10px auto">
			<h5 class="card-header"><b>ADD BOOKING</b></h5>
			<div class="card-body">
				<form action="StaffAddBookingFunction.jsp" method="post" id="wizard">
					<label class="form-label">Staff ID :</label>
					<input type="text" class="form-control mb-2" name="staffid" id="staffid" readonly>
					
					<label class="form-label">Booking Date <span class="text-danger fw-bold">*</span> :</label>
					<input type="date" class="form-control mb-2" id="bookingdate" name="bookingdate" required>
					
					<label class="form-label">Booking Time :</label>
					<div style="text-indent: 20px"><input type="radio" name="bookingtime" id="bookingtime" value="08:00 AM - 05:00 PM" required> 08:00 AM - 05:00 PM</div>
					<div style="text-indent: 20px"><input type="radio" name="bookingtime" id="bookingtime" value="05:00 PM - 12:00 AM" required> 05:00 PM - 12:00 AM</div>
					<div class="mb-2"></div>

					<label class="form-label">Booking Description <span class="text-danger fw-bold">*</span> :</label>
					<input type="text" class="form-control mb-2" id="bookingdescription" name="bookingdescription" required>
					
					<label class="form-label">Booking Estimate Capacity <span class="text-danger fw-bold">*</span> :</label>
					<input type="number" class="form-control mb-2" id="bookingestimatecapacity" name="bookingestimatecapacity" required>
					
					<label class="form-label">Booking Price (RM) <span class="text-danger fw-bold">*</span> :</label>
					<input type="number" class="form-control mb-2" id="bookingprice" min="1" name="bookingprice" required>
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
		<div class="col input-group m-4">
			<span class="input-group-text text-white bg-primary bg-opacity-75 border border-primary">
				<i class="fa fa-arrow-left"></i>
			</span>
			<a href="StaffListBooking.jsp" class="btn btn-primary">Back</a> 
		</div>
	</body>
</html>
