<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c"  
   uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="assets/css/ABooking.css" rel="stylesheet" type="text/css">
<link href="assets/css/bookingForm.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="assets/css/customernavigation.css"> 
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
 
<title>View Asset</title>
</head>
<body>
 
 <div class="navbar"> 
		 <a href="AdminMainPage.jsp"><i class="split"></i> Home</a> 
		 <a href="StaffView.jsp"><i class="split"></i> Staff</a>
		 <a href="ListCustomer.jsp"><i class="split"></i> Customer</a> 
		 <a href="ServicerView.jsp"><i class="" class="split"></i> Servicer</a> 
		 <a href="staffListMaintenance.jsp"><i class="" class="split"></i> Maintenance</a>
		 <a class="active" href="AssetsController?action=list"><i class="" class="split"></i> Assets</a> 
		 <a href="StaffListBooking.jsp"><i class="split"></i> Booking</a> 
		 
		 <li style="float:right"><a href="#"><i class="fa fa-sign-out" class="split"></i> Logout</a> 
		</div>

   <div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
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
	<h1>Asset's Details</h1>
	<a href="AssetsController?action=list" class="button"><h2>List Assets</h2></a>
		<h3>Asset's Info</h3>
		Asset ID: <c:out value="${asset.assetsid}" /><br>
	
		Asset Name: <c:out value="${asset.assetsname}" /><br>
	
		Asset Quantity: <c:out value="${asset.assetsquantity}" /><br>
	
		Asset Category: <c:out value="${asset.assetscategory}" /><br>
	
		Furniture Material: <c:out value="${asset.furnmaterial}" /><br>
	
		Electrical Voltage: <c:out value="${asset.electvoltage}" /><br>
	
		Voltage Unit: <c:out value="${asset.voltageunit}" /><br>
	</div>		
	</section>
	</table>
	</center>
	<!-- Template created and distributed by Colorlib -->
	<a href="AssetsController?action=list"><button class="button">BACK</button></a> 
</body>
</html>