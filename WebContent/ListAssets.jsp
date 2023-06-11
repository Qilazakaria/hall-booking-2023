<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
		<title>Asset Page | Hall Booking System</title>
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

			function setURL() {
				let loginID = sessionStorage.getItem("loginID");
				document.getElementById("staffView").href = "StaffView.jsp?loginID=" + loginID;
			}
		</script>
	</head>
	<body onload="displayStatus(); setURL()">
		<%@page import="DAO.AssetDAO,Model.Assets,java.util.*"%>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
		<%
			List<Assets> assets = AssetDAO.getAllAssets();
			request.setAttribute("assets",assets);
		%>
		<div class="nav-bar"> 
			<a href="AdminMainPage.jsp">Home</a>
			<a id="staffView">Staff</a>
			<a href="ListCustomer.jsp">Customer</a>
			<a href="ServicerView.jsp">Servicer</a>
			<a href="MaintenanceController?action=list">Maintenance</a>
			<a class="active" href="AssetsController?action=list">Assets</a>
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
			<h5 class="card-header"><b>ASSET LIST</b></h5>
			<div class="card-body p-2" style="overflow: auto">
				<table id="assetTable" class="display">
					<thead>
						<tr>
							<th>ID</th>
							<th>NAME</th>
							<th>QUANTITY</th>
							<th>CATEGORY</th>
							<th>ACTION</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${assets}" var="asset">
							<tr>  
								<td><c:out value="${asset.assetsid}" /></td>
								<td><c:out value="${asset.assetsname}" /></td>
								<td><c:out value="${asset.assetsquantity}" /></td>
								<td><c:out value="${asset.assetscategory}" /></td>
								<td style="min-width: 150px !important">
									<span class="col input-group m-1">
										<span class="input-group-text text-white bg-secondary bg-opacity-75 border border-secondary">
											<i class="fa fa-search"></i>
										</span>
										<a href="AssetsController?action=view&assetsid=<c:out value="${asset.assetsid}"/>" class="btn btn-secondary">View</a> 
									</span>
									<span class="col input-group m-1">
										<span class="input-group-text text-black bg-info bg-opacity-75 border border-info">
											<i class="fa fa-eyedropper"></i>
										</span>
										<a href="UpdateAssetController?action=update&assetsid=<c:out value="${asset.assetsid}"/>" class="btn btn-info">Update</a> 
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
			<a href="AddAssets.jsp" class="btn btn-primary">Add Asset</a> 
		</div>
	</body>
</html>