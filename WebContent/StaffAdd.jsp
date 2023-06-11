<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
		<link rel="stylesheet" href="assets/css/Custom.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<title>Staff Page | Hall Booking System</title>
		<script type="text/javascript">			
			function setURL() {
				let loginID = sessionStorage.getItem("loginID");
				document.getElementById("staffView").href = "StaffView.jsp?loginID=" + loginID;
				document.getElementById("staffViewBack").href = "StaffView.jsp?loginID=" + loginID;
			}
		</script>
	</head>
	<body onload="setURL()">
		<div class="nav-bar"> 
			<a href="AdminMainPage.jsp">Home</a>
			<a class="active" id="staffView">Staff</a>
			<a href="ListCustomer.jsp">Customer</a>
			<a href="ServicerView.jsp">Servicer</a>
			<a href="MaintenanceController?action=list">Maintenance</a>
			<a href="AssetsController?action=list">Assets</a>
			<a href="StaffListBooking.jsp">Booking</a>
			<a style="float:right" href="index.jsp"><i class="fa fa-sign-out" class="split"></i> Logout</a>
		</div>
		<div class="card w-50" style="margin: 10px auto">
			<h5 class="card-header"><b>ADD STAFF</b></h5>
			<div class="card-body">
				<form action="/StaffController" method="post" id="wizard">
					<label class="form-label" for="staffname">Name <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="text"  name="staffname" id="staffname" required>
				    
				    <label class="form-label" for="staffemail">Email <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="email"  name="staffemail" id="staffemail" required>
				    
				    <label class="form-label" for="staffhomeno">Home No. <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="number"  name="staffhomeno" id="staffhomeno" required>
				    
				    <label class="form-label" for="staffaddress">Address <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="text" name="staffaddress" id="staffaddress" required>
				    
				    <label class="form-label" for="staffcity">City <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="text"  name="staffcity" id="staffcity" required>
				    
				    <label class="form-label" for="staffposcode">PostCode <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="number"  name="staffposcode" id="staffposcode" required>
				    
				    <label class="form-label" for="staffstate">State <span class="text-danger fw-bold">*</span> : </label>
				    <select class="form-select mb-2" id="staffstate" name = "staffstate" required>
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
				    
				    <label class="form-label" for="stafftelnum">Telephone No. <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="number" name="stafftelnum" id="stafftelnum" required>
				    
				    <label class="form-label" for="staffpass">Password <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="password" name="staffpass" id="staffpass" required>

				    <input type="hidden" name="adminid" id="adminid" value="1">
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
			<a id="staffViewBack" class="btn btn-primary">Back</a> 
		</div>
	</body>
</html>