<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="assets/css/customernavigation.css" rel="stylesheet" type="text/css">

<title>Add Customer</title>
</head>
<body>

<div class="navbar">
		 <a href="AdminMainPage.jsp"><i class="split"></i> Home</a> 
		 <a href="StaffView.jsp"><i class="split"></i> Staff</a>
		 <a class="active" href="ListCustomer.jsp"><i class="split"></i> Customer</a> 
		 <a href="ServicerView.jsp"><i class="" class="split"></i> Servicer</a> 
		 <a href="staffListMaintenance.jsp"><i class="" class="split"></i> Maintenance</a>
		 <a href="ListAssets.jsp"><i class="" class="split"></i> Assets</a> 
		 <a  href="StaffListBooking.jsp"><i class="split"></i> Booking</a> 
		 
		 <li style="float:right"><a href="#"><i class="fa fa-sign-out" class="split"></i> Logout</a> 
</div>

<h2>Add New Customer</h2>
	<form action="/CustomerController" method="post" id="wizard" style="text-align: center">
		
		<label for="custidentificationcard">Ic Number</label>
	    <input type="text" id="custidentificationcard" name="custidentificationcard" placeholder="Cust Identitification Card"><br><br>
	    
		<label for="custname">Name</label>
	    <input type="text" id="custname" name="custname" placeholder="Customer Name" required><br><br>
	     
	     <label for="custtelnum">Phone Number</label>
	    <input type="text" id="custtelnum" name="custtelnum" placeholder="Phone Number" required><br><br>
	 
	    <label for="custhomeno">Home Number</label>
	    <input type="number" id="custhomeno" name="custhomeno" placeholder="Home Number" required><br><br>
	    
	     <label for="custaddress">Address</label>
	    <input type="text" id="custaddress" name="custaddress" placeholder="Address" required><br><br>
		
		<label for="custcity">City</label>
	    <input type="text" id="custcity" name="custcity" placeholder="Customer City" required><br><br>
	    
	    <label for="custpostcode">Postcode</label>
	    <input type="number" id="custpostcode" name="custpostcode" placeholder="Customer Postcode" required><br><br>
	    
	    <label for="custstate">State</label>
	    <input type="text" id="custstate" name="custstate" placeholder="Customer State" required><br><br>
	    
	    <label for="custemail">Email</label>
	    <input type="text" id="custemail" name="custemail" placeholder="Customer Email" required><br><br>
	    
	    <label for="custpass">Password</label>
	    <input type="password" id="custpass" name="custpass" placeholder="Customer Password" required><br><br>
	   			<br>
	   			<br>
			  
		<input type="submit" value="REGISTER">
		<input type="reset" value="RESET" class="button">
	</form>
</body>
</html>
