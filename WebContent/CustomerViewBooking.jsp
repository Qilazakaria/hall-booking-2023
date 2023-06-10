<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
		<link rel="stylesheet" href="assets/css/Custom.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">
		<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>
		<title>Booking Page | Hall Booking System</title>
		<script>
			$(document).ready( function () {
			    $('#assetTable').DataTable();
			});
			
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
			String id = request.getParameter("loginID");
			List<Booking> bookings = bookingDAO.getAllRecordsByCustId(Integer.parseInt(id));  
			request.setAttribute("bookings", bookings);
		%>
		<div class="nav-bar"> 
			<a href="CustomerMainPage.jsp">Home</a> 
			<a class="active" id="viewBooking">Booking</a>
			<a href="CustomerRegisterBooking.jsp">Add Booking</a> 
			<a id="viewProfile">Edit Profile</a>
			<a href="CustomerLogin.jsp" style="float:right"><i class="fa fa-sign-out" class="split"></i> Logout</a> 
		</div>
		<div class="card w-75" style="margin: 10px auto">
			<h5 class="card-header"><b>BOOKING LIST</b></h5>
			<div class="card-body p-2">
				<table id="assetTable" class="display">
					<thead>
						<tr>
							<th>ID</th>
							<th>DESCRIPTION</th>
						    <th>DATE</th>
						    <th>TIME</th>
						    <th>STAFF</th>
						    <th>CUSTOMER</th>
						    <th>ACTION</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${bookings}" var="booking">
							<tr>  
								<td>${booking.getBookingid()}</td>
								<td>${booking.getBookingdescription()}</td>
								<td>${booking.getBookingdate()}</td>
								<td>${booking.getBookingtime()}</td>
								<td>${booking.getStaffName()}</td>
								<td>${booking.getCustName()}</td>
								<td>
									<span class="col input-group m-1">
										<span class="input-group-text text-white bg-secondary bg-opacity-75 border border-secondary">
											<i class="fa fa-search"></i>
										</span>
										<a href="StaffViewBooking.jsp?bookingid=${booking.getBookingid()}" class="btn btn-secondary">View</a> 
									</span>
								</td>
							</tr>  
						</c:forEach>
					</tbody>
				</table>
			</div>  		
		</div>
	</body>
</html>