<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
		<link rel="stylesheet" href="assets/css/Custom.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">
		<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>
		<title>Maintenance Page | Hall Booking System</title>
		<script>
			$(document).ready( function () {
			    $('#assetTable').DataTable();
			});
			
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
			
			function promptDelete(mtnanceid, mtnancedescription) {
				let text = "Are you sure you want to delete " + mtnancedescription + " maintenance?";
			  	if (confirm(text) == true) {
			  		window.location.href = "/MaintenanceController?action=delete&mtnanceid=" + mtnanceid;
			  	}
			}
		</script>
	</head>
	<body onload="displayStatus()">
		<div class="nav-bar"> 
			<a href="AdminMainPage.jsp">Home</a>
			<a href="StaffView.jsp">Staff</a>
			<a href="ListCustomer.jsp">Customer</a>
			<a href="ServicerView.jsp">Servicer</a>
			<a class="active" href="MaintenanceController?action=list">Maintenance</a>
			<a href="AssetsController?action=list">Assets</a>
			<a href="StaffListBooking.jsp">Booking</a>
			<a style="float:right" href="index.jsp"><i class="fa fa-sign-out" class="split"></i> Logout</a>
		</div>
		<div class="w-75" style="margin: 10px auto">
			<div style="display: none" id="success" class="alert alert-success" role="alert">
				<b>Successful</b>
			</div>
			<div style="display: none" id="fail" class="alert alert-danger" role="alert">
				<b>Failed</b>
			</div>
		</div>
		<div class="card w-75" style="margin: 10px auto">
			<h5 class="card-header"><b>MAINTENANCE LIST</b></h5>
			<div class="card-body p-2">
				<table id="assetTable" class="display">
					<thead>
						<tr>
							<th>ID</th>
				    		<th>LAST DATE</th>
				   	 		<th>NEXT DATE</th>
				    		<th>DESCRIPTION</th>
				    		<th>ASSET</th>
				    		<th>SERVICER</th>
				    		<th>ACTION</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${maintenances}" var="maintenance"> 
							<tr>
								<td><c:out value="${maintenance.mtnanceid}"/></td>
								<td><c:out value="${maintenance.mtnancelastdate}"/></td>  
								<td><c:out value="${maintenance.mtnancenextdate}"/></td>
								<td><c:out value="${maintenance.mtnancedescription}"/></td>
								<td><c:out value="${maintenance.assetsname}"/></td>
								<td><c:out value="${maintenance.servicername}"/></td>
								<td>
									<span class="col input-group m-1">
										<span class="input-group-text text-black bg-info bg-opacity-75 border border-info">
											<i class="fa fa-eyedropper"></i>
										</span>
										<a href="/UpdateMaintenanceController?action=update&mtnanceid=<c:out value="${maintenance.mtnanceid}"/>" class="btn btn-info">Update</a> 
									</span>
									<span class="col input-group m-1">
										<span class="input-group-text text-white bg-danger bg-opacity-75 border border-danger">
											<i class="fa fa-eraser"></i>
										</span>
										<a href="javascript:void(0);" onclick="promptDelete('${maintenance.mtnanceid}', '${maintenance.mtnancedescription}')" class="btn btn-danger">Delete</a> 
									</span>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>  		
		</div>
		<div class="col input-group m-4">
		  	<span class="input-group-text text-white bg-primary bg-opacity-75 border border-primary">
		  		<i class="fa fa-plus"></i>
		  	</span>
			<a href="MaintenanceController?action=add" class="btn btn-primary">Add Maintenance</a> 
		</div>
	</body>
</html>