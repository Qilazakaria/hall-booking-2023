<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
		<link rel="stylesheet" href="assets/css/Custom.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<title>Customer Page | Hall Booking System</title>
		<script type="text/javascript">			
			function setURL() {
				let loginID = sessionStorage.getItem("loginID");
				document.getElementById("staffView").href = "StaffView.jsp?loginID=" + loginID;
			}
		</script>
	</head>
	<body onload="setURL()">
		<div class="nav-bar"> 
			<a href="AdminMainPage.jsp">Home</a>
			<a id="staffView">Staff</a>
			<a class="active" href="ListCustomer.jsp">Customer</a>
			<a href="ServicerView.jsp">Servicer</a>
			<a href="MaintenanceController?action=list">Maintenance</a>
			<a href="AssetsController?action=list">Assets</a>
			<a href="StaffListBooking.jsp">Booking</a>
			<a style="float:right" href="index.jsp"><i class="fa fa-sign-out" class="split"></i> Logout</a>
		</div>
		<div class="card w-50" style="margin: 10px auto">
			<h5 class="card-header"><b>ADD CUSTOMER</b></h5>
			<div class="card-body">
				<form action="/CustomerController" method="post" id="wizard">				    
					<label class="form-label" for="custidentificationcard">IC Number <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="number" id="custidentificationcard" name="custidentificationcard" required>
				    
					<label class="form-label" for="custname">Name <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="text" id="custname" name="custname" required>
				     
				    <label class="form-label" for="custtelnum">Phone Number <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="number" id="custtelnum" name="custtelnum" required>
				 
				    <label class="form-label" for="custhomeno">Home Number <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="number" id="custhomeno" name="custhomeno" required>
				    
				    <label class="form-label" for="custaddress">Address <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="text" id="custaddress" name="custaddress" required>
					
					<label class="form-label" for="custcity">City <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="text" id="custcity" name="custcity" required>
				    
				    <label class="form-label" for="custpostcode">PostCode <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="number" id="custpostcode" name="custpostcode" required>
				    
				    <label class="form-label" for="custstate">State <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="text" id="custstate" name="custstate" required>
				    
				    <label class="form-label" for="custemail">Email <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="email" id="custemail" name="custemail" required>
				    
				    <label class="form-label" for="custpass">Password <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="password" id="custpass" name="custpass" required>

					<br>
					<div class="row">
						<div class="col"></div>
						<div class="col"></div>
						<div class="col input-group">
							<span class="input-group-text text-white bg-success bg-opacity-75 border border-success">
								<i class="fa fa-check"></i>
							</span>
							<input class="btn btn-success w-75" type="submit" value="Add">
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
			<a href="ListCustomer.jsp" class="btn btn-primary">Back</a> 
		</div>
	</body>
</html>