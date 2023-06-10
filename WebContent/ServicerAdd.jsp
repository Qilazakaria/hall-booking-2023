<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
		<link rel="stylesheet" href="assets/css/Custom.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<title>Servicer Page | Hall Booking System</title>
	</head>
	<body>
		<div class="nav-bar"> 
			<a href="AdminMainPage.jsp">Home</a>
			<a href="StaffView.jsp">Staff</a>
			<a href="ListCustomer.jsp">Customer</a>
			<a class="active" href="ServicerView.jsp">Servicer</a>
			<a href="MaintenanceController?action=list">Maintenance</a>
			<a href="AssetsController?action=list">Assets</a>
			<a href="StaffListBooking.jsp">Booking</a>
			<a style="float:right" href="index.jsp"><i class="fa fa-sign-out" class="split"></i> Logout</a>
		</div>
		<div class="card w-50" style="margin: 10px auto">
			<h5 class="card-header"><b>ADD SERVICER</b></h5>
			<div class="card-body">
				<form action="ServicerAddFunction.jsp" method="post" id="wizard">
		    		<label class="form-label" for="servicername">Name <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="text"  name="servicername" id="servicername" required>
				    
				    <label class="form-label" for="servicertelno">Telephone Number <span class="text-danger fw-bold">*</span> :</label>
				    <input class="form-control mb-2" type="number"  name="servicertelno" id="servicertelno" required>
				    
				    <label class="form-label" for="servicerhomeno">Home Number <span class="text-danger fw-bold">*</span> :</label>
				    <input class="form-control mb-2" type="number"  name="servicerhomeno" id="servicerhomeno" required>
				    
				    <label class="form-label" for="serviceraddress">Address <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="text" name="serviceraddress" id="serviceraddress" required>
				    
				    <label class="form-label" for="servicercity">City <span class="text-danger fw-bold">*</span> :</label>
				    <input class="form-control mb-2" type="text"  name="servicercity" id="servicercity" required>
				    
				    <label class="form-label" for="servicerpostcode">PostCode <span class="text-danger fw-bold">*</span> :</label>
				    <input class="form-control mb-2" type="number"  name="servicerpostcode" id="servicerpostcode" required>
				    
				    <label class="form-label" for="servicerstate">State <span class="text-danger fw-bold">*</span> : </label>
				    <select class="form-select mb-2" id="servicerstate" name = "servicerstate" required>
						<option value=""></option>	
						<option value="JOHOR">JOHOR</option>
						<option value="MELAKA">MELAKA</option>
						<option value="KEDAH">KEDAH</option>
						<option value="KELANTAN">KELANTAN</option>
						<option value="NEGERI SEMBILAN">NEGERI SEMBILAN</option>
						<option value="PAHANG">PAHANG</option>
						<option value="PERAK">PERAK</option>
						<option value="PERLIS">PERLIS</option>
						<option value="SELANGOR">SELANGOR</option>
						<option value="TERENGGANU">TERENGGANU</option>
						<option value="PULAU PINANG">PULAU PINANG</option>
						<option value="SABAH">SABAH</option>
						<option value="SARAWAK">SARAWAK</option>
						<option value="KUALA LUMPUR">KUALA LUMPUR</option>
						<option value="PUTRAJAYA">PUTRAJAYA</option>
					</select>
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
			<a href="ServicerView.jsp" class="btn btn-primary">Back</a> 
		</div>
	</body>
</html>