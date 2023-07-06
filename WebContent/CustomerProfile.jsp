
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
		<link rel="stylesheet" href="assets/css/Custom.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<title>Profile Page | Hall Booking System</title>
		<script type="text/javascript">
			function displayStatus() {
				let url_string = location.href; 
				let url = new URL(url_string);
				let status = url.searchParams.get("status");
		
				if (status == "SUCCESS") {
					document.getElementById("success").style.display = "block";
				} else if (status == "FAIL") {
					document.getElementById("fail").style.display = "block";
				}
			}
			
			function setURL() {
				let loginID = sessionStorage.getItem("loginID");
				document.getElementById("viewBooking").href = "CustomerViewBooking.jsp?loginID=" + loginID;
				document.getElementById("viewProfile").href = "/CustomerController?action=viewProfile&custid=" + loginID;
			}
		</script>
	</head>
	<body onload="displayStatus(); setURL()">
		<div class="nav-bar"> 
			<a href="CustomerMainPage.jsp">Home</a> 
			<a id="viewBooking">Booking</a>
			<a href="CustomerRegisterBooking.jsp">Add Booking</a> 
			<a class="active" id="viewProfile">Edit Profile</a>
			<a href="CustomerLogin.jsp" style="float:right"><i class="fa fa-sign-out" class="split"></i> Logout</a> 
		</div>
		<div class="w-50" style="margin: 10px auto">
			<div style="display: none" id="success" class="alert alert-success" role="alert">
				<b>Successful</b>
			</div>
			<div style="display: none" id="fail" class="alert alert-danger" role="alert">
				<b>Failed</b>
			</div>
		</div>
		<div class="card w-50" style="margin: 10px auto">
			<h5 class="card-header"><b>UPDATE CUSTOMER</b></h5>
			<div class="card-body">
				<form action="/UpdateCustomerProfileController" method="post" id="wizard">
					<label class="form-label" for="custidentificationcard">IC Number <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="hidden" id="custid" name="custid" value="<c:out value="${customer.custid}" />">
				    <input class="form-control mb-2" type="text" id="custidentificationcard" name="custidentificationcard" value="<c:out value="${customer.custidentificationcard}" />" required>
				    
					<label class="form-label" for="custname">Name <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="text" id="custname" name="custname" value="<c:out value="${customer.custname}" />" required>
				     
				    <label class="form-label" for="custtelnum">Phone Number <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="number" id="custtelnum" name="custtelnum" value="<c:out value="${customer.custtelnum}" />" required>
				 
				    <label class="form-label" for="custhomeno">Home Number <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="number" id="custhomeno" name="custhomeno" value="<c:out value="${customer.custhomeno}" />" required>
				    
				    <label class="form-label" for="custaddress">Address <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="text" id="custaddress" name="custaddress" value="<c:out value="${customer.custaddress}" />" required>
					
					<label class="form-label" for="custcity">City <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="text" id="custcity" name="custcity" value="<c:out value="${customer.custcity}" />" required>
				    
				    <label class="form-label" for="custpostcode">PostCode <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="number" id="custpostcode" name="custpostcode" value="<c:out value="${customer.custpostcode}" />" required>
				    
				    <label class="form-label" for="custstate">State <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="text" id="custstate" name="custstate" value="<c:out value="${customer.custstate}" />" required>
				    
				    <label class="form-label" for="custemail">Email <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="email" id="custemail" name="custemail" value="<c:out value="${customer.custemail}" />" required>
				    
				    <label class="form-label" for="custpass">Password <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="text" id="custpass" name="custpass" value="<c:out value="${customer.custpass}" />" required>

					<br>
					<div class="row">
						<div class="col"></div>
						<div class="col"></div>
						<div class="col input-group">
							<span class="input-group-text text-white bg-success bg-opacity-75 border border-success">
								<i class="fa fa-check"></i>
							</span>
							<input class="btn btn-success w-75" type="submit" value="Update">
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
			<button onclick="history.back()" class="btn btn-primary">Back</button>
		</div>
	</body>
</html>
