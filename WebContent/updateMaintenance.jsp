<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"  
   uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Maintenance Detail</title>
</head>
<link href="css/bookingForm.css" rel="stylesheet" type="text/css">
<link href="css/ABooking.css" rel="stylesheet" type="text/css">
<link href="css/customernavigation.css" rel="stylesheet" type="text/css">
<body>
<div class="navbar"> 
	 <a href="#"><i class="fa fa-home" class="split"></i> Home</a> 
	 <a href="#"><i class="" class="split"></i> Assets</a> 
	 <a href="#"><i class="active" class="split"></i> Maintenance</a> 
	 <a href="#"><i class="" class="split"></i> Servicer</a> 
	 <a href="#"><i class="" class="split"></i> Booking</a> 
	 <a class="" href="#"><i class="fa fa-users" class="split"></i> Staff</a>
	 <a href="#"><i class="fa fa-users" class="split"></i> Customer</a> 
   <li style="float:right"><a href="#"><i class="fa fa-sign-out" class="split"></i> Logout</a> 
</div>
<h2>Update Maintenance</h2>
<div class="form">
 <form action="UpdateMaintenanceController" method="POST" id="wizard"> 
        
       	Maintenance Last Date:
       	<input type="date" id="mtnancelastdate" name="mtnancelastdate" value="<c:out value="${maintenance.mtnancelastdate}"/> " ><br><br>
       	Maintenance Next Date:
       	<input type="date" id="mtnancenextdate" name="mtnancenextdate" value="<c:out value="${maintenance.mtnancenextdate}"/> " ><br><br>
       	Maintenance Description:
       	<input type="text" id="mtnancedescription" name="mtnancedescription" value="<c:out value="${maintenance.mtnancedescription}"/> "><br><br>
     	<!-- 
     	<label align=left for="assetsID">Asset ID:
    		<select name="assetsID">
    		<c:forEach items="${assets}" var="asset">
            <option value="${asset.assetsID}">${asset.assetsName}</option>
        	</c:forEach>
        	</select>
    		</label>
    		<br>
    		<label align=left for="servicerID">Servicer ID:
    		<select name="servicerID">
    		<c:forEach items="${list}" var="servicer"> 
    		<option value="${servicer.servicerID}">${servicer.servicerName}</option>
    		</c:forEach>
    		</select>
    		</label>
    	-->
    		<br>
       	<input type="hidden" id="mtnanceid" name="mtnanceid" value="<c:out value="${maintenance.mtnanceid}"/>"><br>
        <input type="submit" value="Submit">
        
  </form>
  </div>
</body>
</html>