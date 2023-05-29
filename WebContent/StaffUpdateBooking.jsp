<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="assets/css/ABooking.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="assets/css/customernavigation.css"> 
<link rel="stylesheet" href="assets/css/staffadd.css"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 

<title>Staff Update Form</title>
</head>
<body>
<%@page import="booking.bookingDAO,booking.Booking"%>
  
<%
String bookingid = request.getParameter("bookingid");
Booking b = bookingDAO.getRecordById(Integer.parseInt(bookingid));
%>   
<div class="navbar"> 
	<a href="AdminMainPage.jsp"><i class="split"></i> Home</a> 
	<a href="StaffView.jsp"><i class="split"></i> Staff</a>
	<a href="ListCustomer.jsp"><i class="split"></i> Customer</a> 
	<a class="active" href="ServicerView.jsp"><i class="" class="split"></i> Servicer</a> 
	<a href="staffListMaintenance.jsp"><i class="" class="split"></i> Maintenance</a>
	<a href=""><i class="" class="split"></i> Assets</a> 
	<a href="StaffListBooking.jsp"><i class="split"></i> Booking</a> 
		 
	<li style="float:right"><a href="#"><i class="fa fa-sign-out" class="split"></i> Logout</a> 
</div>
		
<div class="container" style="text-align:center">
	<form action="StaffUpdateBookingFunction.jsp" method="post">
		<h2>UPDATE PRICE</h2>
		<input type="hidden" name="bookingid" value="<%= b.getBookingid() %>"/>
			     
		<br><br>    
		<label for="bookingdate">DATE: </label><br>
		<input type="text" name="bookingdate" value="<%= b.getBookingdate() %>"><br><br>
    
		<label for="bookingtime">TIME:</label><br>
		<input type="text" name="bookingtime" value="<%= b.getBookingtime() %>"><br><br>

		<label for="description">DESCRIPTION:</label><br>
		<input type="text" name="description" value="<%= b.getBookingdescription() %>"><br><br>

		<label for="capacity">ESTIMATE CAPACITY: </label><br>
		<input type="text" name="capacity" value="<%= b.getBookingestimatecapacity() %>"><br><br>

		<label for="price">PRICE:</label><br>
		<input type="text" name="price" value="<%= b.getBookingprice() %>"><br><br>

		<br>
		<input type="submit" value="Submit">
		<br>
	</form>
</div>
<a href="StaffViewBooking.jsp?bookingid=<%= b.getBookingid() %>"><button class="button">BACK</button></a> 
</body>
</html>
