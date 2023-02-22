<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="customernavigation.css" rel="stylesheet" type="text/css">

<title>Add Customer</title>
</head>
<body>

<div class="navbar">
 <a href="#"><i class="fa fa-home" class="split"></i> Home</a> 
 <a href="#"><i class="" class="split"></i> Staff</a> 
 <a href="#" class="active"><i class="" class="split"></i> Customer</a> 
 <a href="#"><i class="" class="split"></i> Servicer</a> 
 <a class="" href="#"><i class="" class="split"></i> Maintenance</a> 
 <a href="#" ><i class="fa fa-users" class="split"></i> Assets</a> 
  <li style="float:right"><a href="#"><i class="fa fa-sign-out" class="split"></i> Logout</a>
</div>

<div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">

	<h2>Add New Customer</h2>
	
			</div>
			</div>
		</div>
		</div>
		</div>
		</div>
	
	<table class="table table-striped table-hover">
	<center>
	
	<div class="form">
		<form action="CustomerController" method="post" id="wizard">
	
	<label for="custid">Customer ID</label>
	<input type="text" id="custid" name="custid" placeholder="custid"><br><br>
	
	<label for="custidentificationcard">Ic Number</label>
    <input type="text" id="custidentificationcard" name="custidentificationcard" placeholder="Cust Identitification Card"><br><br>
    
	<label for="custname">Name</label>
    <input type="text" id="custname" name="custname" placeholder="Customer Name"><br><br>
     
     <label for="custtelnum">Phone Number</label>
    <input type="text" id="custtelnum" name="custtelnum" placeholder="Phone Number"><br><br>
 
    <label for="custhomeno">Home Number</label>
    <input type="number" id="custhomeno" name="custhomeno" placeholder="Home Number"><br><br>
    
     <label for="custaddress">Address</label>
    <input type="text" id="custaddress" name="custaddress" placeholder="Address"><br><br>
	
	<label for="custcity">City</label>
    <input type="text" id="custcity" name="custcity" placeholder="Customer City"><br><br>
    
    <label for="custpostcode">Postcode</label>
    <input type="number" id="custpostcode" name="custpostcode" placeholder="Customer Postcode"><br><br>
    
    <label for="custstate">State</label>
    <input type="text" id="custstate" name="custstate" placeholder="Customer State"><br><br>
    
    <label for="custemail">Email</label>
    <input type="text" id="custemail" name="custemail" placeholder="Customer Email"><br><br>
    
    <label for="custpass">Password</label>
    <input type="password" id="custpass" name="custpass" placeholder="Customer Password"><br><br>
   			<br>
   			<br>
		  
		  <input type="submit" value="REGISTER">
		  <input type="reset" value="RESET" class="button">
		  
		</form> 
		</table>
		</center>
	</div>

</body>
</html>