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
<title>View Asset</title>
</head>
<body>
 
 <div class="navbar"> 
		 <a href="AdminMainPage.jsp"><i class="split"></i> Home</a> 
		 <a href="StaffView.jsp"><i class="split"></i> Staff</a>
		 <a href="ListCustomer.jsp"><i class="split"></i> Customer</a> 
		 <a href="ServicerView.jsp"><i class="" class="split"></i> Servicer</a> 
		 <a href="staffListMaintenance.jsp"><i class="" class="split"></i> Maintenance</a>
		 <a class="active" href=""><i class="" class="split"></i> Assets</a> 
		 <a href="StaffListBooking.jsp"><i class="split"></i> Booking</a> 
		 
		 <li style="float:right"><a href="#"><i class="fa fa-sign-out" class="split"></i> Logout</a> 
		</div>

   <div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
					<h2>View Asset</h2>
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
</body>
</html>