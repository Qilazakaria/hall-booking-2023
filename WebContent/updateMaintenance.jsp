<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
		<link rel="stylesheet" href="assets/css/Custom.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<title>Maintenance Page | Hall Booking System</title>
		<script type="text/javascript">			
			function setURL() {
				let loginID = sessionStorage.getItem("loginID");
				document.getElementById("staffView").href = "StaffView.jsp?loginID=" + loginID;
			}
		</script>
	</head>
	<body onload="setURL()">
		<%@ page import="DAO.AssetDAO, Servicer.servicerDAO, java.util.*" %>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<div class="nav-bar"> 
			<a href="AdminMainPage.jsp">Home</a>
			<a id="staffView">Staff</a>
			<a href="ListCustomer.jsp">Customer</a>
			<a href="ServicerView.jsp">Servicer</a>
			<a class="active" href="MaintenanceController?action=list">Maintenance</a>
			<a href="AssetsController?action=list">Assets</a>
			<a href="StaffListBooking.jsp">Booking</a>
			<a style="float:right" href="index.jsp"><i class="fa fa-sign-out" class="split"></i> Logout</a>
		</div>
		<div class="card w-50" style="margin: 10px auto">
			<h5 class="card-header"><b>UPDATE MAINTENANCE</b></h5>
			<div class="card-body">
				<form action="/UpdateMaintenanceController" method="post" id="wizard">
		    		<label class="form-label">Maintenance Last Date :</label>
		    		<input class="form-control mb-2" type="text" id="mtnanceid" name="mtnanceid" value="<c:out value="${maintenance.mtnanceid}"/>" hidden="hidden">
		    		<input class="form-control mb-2" type="date" id="mtnancelastdate" name="mtnancelastdate" value="<c:out value="${maintenance.mtnancelastdate}"/>">
		    		
		    		<label class="form-label">Maintenance Next Date :</label>
		    		<input class="form-control mb-2" type="date" id="mtnancenextdate" name="mtnancenextdate" value="<c:out value="${maintenance.mtnancenextdate}"/>">
		    		
		    		<label class="form-label">Maintenance Description :</label>
		    		<input class="form-control mb-2" type="text" id="mtnancedescription" name="mtnancedescription" value="<c:out value="${maintenance.mtnancedescription}"/>">
		    		
		    		<label class="form-label">Asset :</label>
		    		<select class="form-select mb-2" name="assetsid">
			            <option value=""></option>
			    		<c:forEach items="${AssetDAO.getAllAssets()}" var="asset">
			            	<option <c:if test="${asset.assetsid == maintenance.assetsid}">selected="selected"</c:if> value="${asset.assetsid}">${asset.assetsname}</option>
			        	</c:forEach>
		        	</select>
		        	
		    		<label class="form-label">Servicer :</label>
		    		<select class="form-select mb-2" name="servicerid">
			            <option value=""></option>
			    		<c:forEach items="${servicerDAO.getAllRecords()}" var="servicer"> 
			    			<option <c:if test="${servicer.servicerid == maintenance.servicerid}">selected="selected"</c:if> value="${servicer.servicerid}">${servicer.servicername}</option>
			    		</c:forEach>
		    		</select>
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
			<a href="MaintenanceController?action=list" class="btn btn-primary">Back</a> 
		</div>
	</body>
</html>