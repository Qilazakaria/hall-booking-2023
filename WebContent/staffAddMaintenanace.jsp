<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="assets/css/ABooking.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="assets/css/customernavigation.css"> 
<link rel="stylesheet" href="assets/css/staffadd.css"> 
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Add New Maintenance</title>
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
    <div class="backBut">
	<button type="button" onclick="goBack()">&laquo;</button>
	<script>
    function goBack() 
		{
			 window.history.back();
        }
    </script>	
	</div>
 <h1>Add Maintenance Details</h1>
 	<div class="form" align=center>
 		<form action="MaintenanceController" method="post" id="wizard">
    		<label align=left for="mtnancelastdate">Maintenance Last Date:
    		<input type="date" id="mtnancelastdate" name="mtnancelastdate" placeholder="Maintenance Last Date">
    		</label><br>
    		<label for="mtnancenextdate">Maintenance Next Date:
    		<input type="date" id="mtnancenextdate" name="mtnancenextdate" placeholder="Maintenance Next Date">
    		</label><br>
    		<label style=text-align:left for="mtnancedescription">Maintenance Description:
    		<input type="text" id="mtnancedescription" name="mtnancedescription" placeholder="Maintenance Description">
    		</label><br>
    		<label align=left for="assetsid">Asset ID:
    		<select name="assetsid">
    		<c:forEach items="${assets}" var="asset">
            <option value="${asset.assetsid}">${asset.assetsname}</option>
        	</c:forEach>
        	</select>
    		</label>
    		<br>
    		<label align=left for="servicerid">Servicer ID:
    		<select name="servicerid">
    		<c:forEach items="${list}" var="servicer"> 
    		<option value="${servicer.servicerid}">${servicer.servicername}</option>
    		</c:forEach>
    		</select>
    		</label>
    		<br>
    		<input type="submit" value="Submit">
  		</form>
  	</div>
</body>
</html>