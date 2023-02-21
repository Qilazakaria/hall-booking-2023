<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"  
   uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="assets/css/Assets.css" rel="stylesheet" type="text/css">
<link href="assets/css/customernavigation.css" rel="stylesheet" type="text/css">

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="https://gc.kis.v2.scr.kaspersky-labs.com/FD126C42-EBFA-4E12-B309-BB3FDD723AC1/main.js?attr=Pi7kJWWD9rigL-MFJ0HoJU6xYNJwSSKTQ0v5nLA_Nq7thFt9fWMHhMzFn4FnokZZkjzbttFKhbfkapeoA4BVI5tZ81L8Psq2IhS2gpcytw0" charset="UTF-8"></script><script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>



<title>Add Assets</title>
</head>
<body>

<div class="navbar"> 
	 <a href="AdminMainPage.jsp"><i class="split"></i> Home</a> 
	 <a href="StaffView.jsp"><i class="split"></i> Staff</a>
	 <a href="ListCustomer.jsp"><i class="split"></i> Customer</a> 
	 <a class="split" href="ServicerView.jsp"><i class="" class="split"></i> Servicer</a> 
	 <a href="staffListMaintenance.jsp"><i class="" class="split"></i> Maintenance</a>
	 <a href=""><i class="active" class="split"></i> Assets</a> 
	 <a href="StaffListBooking.jsp"><i class="split"></i> Booking</a> 
	 
	 <li style="float:right"><a href="#"><i class="fa fa-sign-out" class="split"></i> Logout</a> 
	</div> 

<div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">

	<h2>Add New Assets</h2>
	
			</div>
			</div>
		</div>
		</div>
		</div>
		</div>
	
	<table class="table table-striped table-hover">
	<center>
	
	<div class="form">
		<form action="AssetsController" method="post">
			<label for="assetsname">Asset Name: </label><br>
    		<input type="text" id="assetsname" name="assetsname" value=""><br>
    		
    		<label for="assetsquantity">Asset Quantity: </label><br>
    		<input type="number" id="assetsquantity" name="assetsquantity" value=""><br>
    		
    		<label for="assetscategory">Asset Category: </label><br>
    		<select name="assetscategory">
     			<option value="Furniture">Furniture</option>
     			<option value="Electrical">Electrical</option>
    		</select>
    		<br>
    		
    		<label for="furnmaterial">Furniture Material: </label><br>
    		<input type="text" id="furnmaterial" name="furnmaterial" value=""><br>
    		
    		<label for="electvoltage">Electrical Voltage: </label><br>
    		<input type="text" id="electvoltage" name="electvoltage" value=""><br>
    		
    		<label for="voltageunit">Electrical Voltage Unit: </label><br>
    		<input type="text" id="voltageunit" name="voltageunit" value=""><br>
   			<br>
   			<br>
		  
		  <input type="submit" value="Add Asset">
		  <input type="reset" value="Reset">
		  
		</form> 
		</table>
		</center>
	</div>

</body>
</html>