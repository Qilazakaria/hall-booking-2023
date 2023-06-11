<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
		<link rel="stylesheet" href="assets/css/Custom.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<title>Asset Page | Hall Booking System</title>
		<script type="text/javascript">
			let furnmaterial = null;
			let electvoltage = null;
			let voltageunit = null;
			
			function onHide() {
				furnmaterial = document.getElementById("furnmaterialview");
				electvoltage = document.getElementById("electvoltageview");
				voltageunit = document.getElementById("voltageunitview");
				
				furnmaterial.style.display = "none";
				electvoltage.style.display = "none";
				voltageunit.style.display = "none";
				
				onShow();
			}
	
			function onShow() {
				let category = document.getElementById("assetscategory").value;

				switch(category) {
					case "Furniture":
						furnmaterial.style.display = "block";
					break;
					case "Electrical":
						electvoltage.style.display = "block";
						voltageunit.style.display = "block";
					break;
				}
			}

			function setURL() {
				let loginID = sessionStorage.getItem("loginID");
				document.getElementById("staffView").href = "StaffView.jsp?loginID=" + loginID;
			}
		</script>
	</head>
	<body onload="onHide(); setURL()">
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
		<div class="card w-50" style="margin: 10px auto">
		  	<h5 class="card-header"><b>VIEW ASSET</b></h5>
		  	<div class="card-body">
				<label class="form-label">Asset Name : </label>
				<input class="form-control mb-2" type="text" id="assetsname" name="assetsname" value="<c:out value="${asset.assetsname}"/>" disabled>
				
				<label class="form-label">Asset Quantity : </label>
				<input class="form-control mb-2" type="number" id="assetsquantity" name="assetsquantity" value="<c:out value="${asset.assetsquantity}"/>" disabled>
				
				<label class="form-label">Asset Category : </label>
				<select onchange="onShow(event)" class="form-select mb-2" id="assetscategory" name="assetscategory" disabled>
					<option value=""></option>
					<option <c:if test="${asset.assetscategory == 'Furniture'}">selected="selected"</c:if> value="Furniture">Furniture</option>
					<option <c:if test="${asset.assetscategory == 'Electrical'}">selected="selected"</c:if> value="Electrical">Electrical</option>
				</select>
				
				<span id="furnmaterialview">
					<label class="form-label">Furniture Material : </label>
					<input class="form-control mb-2" type="text" id="furnmaterial" name="furnmaterial" value="<c:out value="${asset.furnmaterial}"/>" disabled>
				</span>
				
				<span id="electvoltageview">
					<label class="form-label">Electrical Voltage : </label>
					<input class="form-control mb-2" type="text" id="electvoltage" name="electvoltage" value="<c:out value="${asset.electvoltage}"/>" disabled>
				</span>
				
				<span id="voltageunitview">
					<label class="form-label">Electrical Voltage Unit : </label>
					<input class="form-control mb-2" type="text" id="voltageunit" name="voltageunit" value="<c:out value="${asset.voltageunit}"/>" disabled>
				</span>
		  	</div>
		</div>
		<div class="col input-group m-4">
		  	<span class="input-group-text text-white bg-primary bg-opacity-75 border border-primary">
		  		<i class="fa fa-arrow-left"></i>
		  	</span>
			<a href="AssetsController?action=list" class="btn btn-primary">Back</a> 
		</div>
	</body>
</html>