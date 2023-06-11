<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				document.getElementById("staffView").href = "StaffView.jsp?loginID=" + loginID;
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
			<h5 class="card-header"><b>VIEW BOOKING</b></h5>
			<div class="card-body">
				<form action="/BookingController" method="post">
					<input type="hidden" class="form-control mb-2" name="bookingid" id="bookingid" value="<%= booking.getBookingid() %>">
					
					<label class="form-label">Staff Name :</label>
					<input type="text" class="form-control mb-2" name="staffid" id="staffid" value="<%= booking.getStaffName() %>" disabled>
					
					<label class="form-label">Customer Name :</label>
					<input type="text" class="form-control mb-2" name="custid" id="custid" value="<%= booking.getCustName() %>" disabled>
					
					<label class="form-label">Booking Date :</label>
					<input type="text" class="form-control mb-2" id="bookingdate" name="bookingdate" value="<%= booking.getBookingdate() %>" disabled>
					
					<label class="form-label">Booking Time :</label>
					<input type="text" class="form-control mb-2" id="bookingtime" name="bookingtime" value="<%= booking.getBookingtime() %>" disabled>
	
					<label class="form-label">Booking Description :</label>
					<input type="text" class="form-control mb-2" id="bookingdescription" name="bookingdescription" value="<%= booking.getBookingdescription() %>" disabled>
					
					<label class="form-label">Booking Estimate Capacity :</label>
					<input type="text" class="form-control mb-2" id="bookingestimatecapacity" name="bookingestimatecapacity" value="<%= booking.getBookingestimatecapacity() %>" disabled>
					
					<label class="form-label">Booking Price (RM) :</label>
					<c:if test="<%= booking.getBookingprice() == 0 %>">
						<input type="number" class="form-control mb-2" id="bookingprice" name="bookingprice" required min="1">
					</c:if>
					<c:if test="<%= booking.getBookingprice() != 0%>">
						<input type="number" class="form-control mb-2" id="bookingprice" name="bookingprice" value="<%= booking.getBookingprice() %>" required min="1">
					</c:if>
					<br>
					<div class="row">
						<div class="col"></div>
						<div class="col"></div>
						<div class="col input-group">
							<span class="input-group-text text-white bg-success bg-opacity-75 border border-success">
								<i class="fa fa-check"></i>
							</span>
							<input class="btn btn-success w-75" type="submit" value="Update">
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