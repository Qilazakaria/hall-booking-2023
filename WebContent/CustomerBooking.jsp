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
			function setURL() {
				let loginID = sessionStorage.getItem("loginID");
				document.getElementById("viewBooking").href = "CustomerViewBooking.jsp?loginID=" + loginID;
				document.getElementById("viewProfile").href = "/CustomerController?action=viewProfile&custid=" + loginID;
			}
		</script>
	</head>
	<body onload="setURL()">
		<%@page import="booking.bookingDAO,booking.Booking,java.util.*"%>
		<%  
			int bookingid = Integer.parseInt(request.getParameter("bookingid"));
			Booking booking = bookingDAO.getRecordById(bookingid);
		%>
		<div class="nav-bar"> 
			<a href="CustomerMainPage.jsp">Home</a> 
			<a class="active" id="viewBooking">Booking</a>
			<a href="CustomerRegisterBooking.jsp">Add Booking</a> 
			<a id="viewProfile">Edit Profile</a>
			<a href="CustomerLogin.jsp" style="float:right"><i class="fa fa-sign-out" class="split"></i> Logout</a> 
		</div>
		<div class="card w-50" style="margin: 10px auto">
			<h5 class="card-header"><b>VIEW BOOKING</b></h5>
			<div class="card-body">
				<label class="form-label">Booking ID :</label>
				<input type="text" class="form-control mb-2" name="bookingid" id="bookingid" value="<%= booking.getBookingid() %>" disabled>
				
				<label class="form-label">Staff Name :</label>
				<input type="text" class="form-control mb-2" name="staffid" id="staffid" value="<%= booking.getStaffName() %>" disabled>
				
				<label class="form-label">Customer Name :</label>
				<input type="text" class="form-control mb-2" name="custid" id="custid" value="<%= booking.getCustName() %>" disabled>
				
				<label class="form-label">Booking Date :</label>
				<input type="text" class="form-control mb-2" id="bookingdate" name="bookingdate" value="<%= booking.getBookingdate() %>" disabled>
				
				<label class="form-label">Booking Time :</label>
				<input type="text" class="form-control mb-2" id="bookingtime" name="bookingtime" value="<%= booking.getBookingtime() %>" disabled>

				<label class="form-label">Booking Description :</label>
				<input type="text" class="form-control mb-2" id="bookingdescription" name="bookingdescription" value="<%= booking.getBookingdescription() %>" required>
				
				<label class="form-label">Booking Estimate Capacity :</label>
				<input type="text" class="form-control mb-2" id="bookingestimatecapacity" name="bookingestimatecapacity" value="<%= booking.getBookingestimatecapacity() %>" required>
				
				<label class="form-label">Booking Price (RM) :</label>
				<input type="text" class="form-control mb-2" id="bookingprice" name="bookingprice" value="<%= booking.getBookingprice() %>" disabled>
			</div>
		</div>
		<div class="col input-group m-4">
			<span class="input-group-text text-white bg-primary bg-opacity-75 border border-primary">
				<i class="fa fa-arrow-left"></i>
			</span>
			<button onclick="history.back()" class="btn btn-primary">Back</button> 
		</div>
	</body>
</html>
