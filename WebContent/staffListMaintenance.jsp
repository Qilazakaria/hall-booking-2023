<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="assets/css/ABooking.css" rel="stylesheet" type="text/css">
<link href="assets/css/bookingForm.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="assets/css/customernavigation.css"> 
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
 
</head>

<body>
 <div class="navbar"> 
		 <a href="AdminMainPage.jsp"><i class="split"></i> Home</a> 
		 <a href="StaffView.jsp"><i class="split"></i> Staff</a>
		 <a href="ListCustomer.jsp"><i class="split"></i> Customer</a> 
		 <a href="ServicerView.jsp"><i class="" class="split"></i> Servicer</a> 
		 <a class="active" href="staffListMaintenance.jsp"><i class="" class="split"></i> Maintenance</a>
		 <a  href="AssetsController?action=list"><i class="" class="split"></i> Assets</a> 
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