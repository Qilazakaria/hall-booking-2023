<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style>
	table {
	  font-family: arial, sans-serif;
	  border-collapse: collapse;
	  width: 95%;
	  margin:auto;
	}
	
	td, th {
	  border: 1px solid #dddddd;
	  text-align: center;
	  padding: 8px;
	}
	
	tr:nth-child(even) {
	  background-color: #dddddd;
	}
	.button {
	  border: none;
	  color: black;
	  padding: 10px 22px;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  font-size: 16px;
	  margin: 2px 2px;
	  transition-duration: 0.4s;
	  cursor: pointer;
	}
	.button2 {
	  background-color: #52BE80; 
	  color: black; 
	  border: 2px solid #52BE80;
	}
	
	.button2:hover {
	  background-color: #52BE80;
	  color: black;
	}
	</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="assets/css/ABooking.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="assets/css/customernavigation.css"> 
<link rel="stylesheet" href="assets/css/staffadd.css"> 
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
<title>Maintenance Page</title>
<link rel="stylesheet" href="css/Maintenance.css">
<link rel="stylesheet" href="css/customernavigation.css">
</head>

<body>
<div class="navbar"> 
		 <a href="AdminMainPage.jsp"><i class="split"></i> Home</a> 
		 <a class="" href="StaffView.jsp"><i class="split"></i> Staff</a>
		 <a href="ListCustomer.jsp"><i class="split"></i> Customer</a> 
		 <a href="ServicerView.jsp"><i class="" class="split"></i> Servicer</a> 
		 <a href="staffListMaintenance.jsp"><i class="active" class="split"></i> Maintenance</a>
		 <a href="AssetsController?action=list"><i class="" class="split"></i> Assets</a> 
		 <a href="StaffListBooking.jsp"><i class="split"></i> Booking</a> 
		 
		 <li style="float:right"><a href="#"><i class="fa fa-sign-out" class="split"></i> Logout</a> 
		</div> 
<a href="MaintenanceController?action=add" class="button">Add New Maintenance</a>
<h1>Maintenance</h1>
	<table align=center>
  		<thead> 
			<tr>
			<th>Maintenance ID</th>
    		<th>Last Maintenance</th>
   	 		<th>Next Maintenance</th>
    		<th>Description</th>
    		<th>Asset ID</th>
    		<th>Servicer ID</th>
    		<th>Action</th>  
			<tr>
		</thead>
		<tbody>
		<tr>
		<c:forEach items="${maintenances}" var="maintenance"> 
		<td><c:out value="${maintenance.mtnanceid}"/></td>
		<td><c:out value="${maintenance.mtnancelastdate}"/></td>  
		<td><c:out value="${maintenance.mtnancenextdate}"/></td>
		<td><c:out value="${maintenance.mtnancedescription}"/></td>
		<td><c:out value="${maintenance.assetsid}"/></td>
		<td><c:out value="${maintenance.servicerid}"/></td>
		<td>
		<a href="UpdateMaintenanceController?action=update&mtnanceid=<c:out value="${maintenance.mtnanceid}"/>"class="button">Update</a>
		<a href="MaintenanceController?action=delete&mtnanceid=<c:out value="${maintenance.mtnanceid}"/>"class="button" onclick="confirmation(thid.id)">Delete</a>
		</td>
		<tr>
		</c:forEach> 
		</tbody>
	</table>
<a href="AdminMainPage.html">
<input type="submit" name="back" value="Back">
</a>
</body>
</html>