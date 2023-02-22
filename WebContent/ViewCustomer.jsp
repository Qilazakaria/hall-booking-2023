<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c"  
   uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="customernavigation.css" rel="stylesheet" type="text/css">
<link href="Assets.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="https://gc.kis.v2.scr.kaspersky-labs.com/FD126C42-EBFA-4E12-B309-BB3FDD723AC1/main.js?attr=Pi7kJWWD9rigL-MFJ0HoJU6xYNJwSSKTQ0v5nLA_Nq7thFt9fWMHhMzFn4FnokZZkjzbttFKhbfkapeoA4BVI5tZ81L8Psq2IhS2gpcytw0" charset="UTF-8"></script><script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>View Customer</title>
</head>
<body>
 <div class="navbar"> 
 <a href="#"><i class="fa fa-home" class="split"></i> Home</a> 
 <a href="#"><i class="" class="split"></i> Assets</a> 
 <a href="#"><i class="" class="split"></i> Maintenance</a> 
 <a href="#"><i class="" class="split"></i> Servicer</a> 
 <a  href="#"><i class="" class="split"></i> Booking</a> 
 <a class="active" href="#"><i class="fa fa-users" class="split"></i> Customer</a> 
   <li style="float:right"><a href="#"><i class="fa fa-sign-out" class="split"></i> Logout</a> 
</div>

   <div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
					<h2>View Customer</h2>
					</div>
			</div>
		</div>
		</div>
		</div>
		</div>
		<table class="table table-striped table-hover">
<!-- SECTION 1 -->
	<section>

	<div class="form">
	<center>
	<h1>Customer Details</h1>
	<a href="CustomerController?action=list" class="button"><h2>List Customer</h2></a>
		<h3>Customer Info</h3>
		Customer ID: <c:out value="${customer.custid}" /><br>
	
		Customer Name:: <c:out value="${customer.custname}" /><br>
	
		Identification Card Number: <c:out value="${customer.custidentificationcard}" /><br>
	
		Phone Number: <c:out value="${customer.custtelnum}" /><br>
	
		Home Number: <c:out value="${customer.custhomeno}" /><br>
	
		Address:<c:out value="${customer.custaddress}" /><br>
	
		City: <c:out value="${customer.custcity}" /><br>
		
		Postcode: <c:out value="${customer.custpostcode}" /><br>
	
		State: <c:out value="${customer.custstate}" /><br>
	
		Email: <c:out value="${customer.custemail}" /><br>
	
		Password: <c:out value="${customer.custpass}" /><br>
		
	</div>		
	</section>
	</table>
	</center>
	<!-- Template created and distributed by Colorlib -->
</body>
</html>