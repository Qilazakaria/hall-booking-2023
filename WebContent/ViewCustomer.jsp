
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
			<h5 class="card-header"><b>VIEW CUSTOMER</b></h5>
			<div class="card-body">
				<label class="form-label" for="custidentificationcard">IC Number : </label>
			    <input class="form-control mb-2" type="text" id="custidentificationcard" name="custidentificationcard" value="<c:out value="${customer.custidentificationcard}" />" disabled>
			    
				<label class="form-label" for="custname">Name : </label>
			    <input class="form-control mb-2" type="text" id="custname" name="custname" value="<c:out value="${customer.custname}" />" disabled>
			     
			    <label class="form-label" for="custtelnum">Phone Number : </label>
			    <input class="form-control mb-2" type="number" id="custtelnum" name="custtelnum" value="<c:out value="${customer.custtelnum}" />" disabled>
			 
			    <label class="form-label" for="custhomeno">Home Number  : </label>
			    <input class="form-control mb-2" type="number" id="custhomeno" name="custhomeno" value="<c:out value="${customer.custhomeno}" />" disabled>
			    
			    <label class="form-label" for="custaddress">Address : </label>
			    <input class="form-control mb-2" type="text" id="custaddress" name="custaddress" value="<c:out value="${customer.custaddress}" />" disabled>
				
				<label class="form-label" for="custcity">City : </label>
			    <input class="form-control mb-2" type="text" id="custcity" name="custcity" value="<c:out value="${customer.custcity}" />" disabled>
			    
			    <label class="form-label" for="custpostcode">PostCode  : </label>
			    <input class="form-control mb-2" type="number" id="custpostcode" name="custpostcode" value="<c:out value="${customer.custpostcode}" />" disabled>
			    
			    <label class="form-label" for="custstate">State : </label>
			    <input class="form-control mb-2" type="text" id="custstate" name="custstate" value="<c:out value="${customer.custstate}" />" disabled>
			    
			    <label class="form-label" for="custemail">Email : </label>
			    <input class="form-control mb-2" type="email" id="custemail" name="custemail" value="<c:out value="${customer.custemail}" />" disabled>
			    
			    <label class="form-label" for="custpass">Password : </label>
			    <input class="form-control mb-2" type="text" id="custpass" name="custpass" value="<c:out value="${customer.custpass}" />" disabled>
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