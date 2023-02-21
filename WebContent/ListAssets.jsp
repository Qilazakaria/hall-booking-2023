<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"  
   uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="assets/css/ABooking.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="assets/css/customernavigation.css"> 
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<title>List Assets</title>
<style>
.button {
  background-color: #00aaff; /* blue */
  border: none;
  color: black;
  padding: 10px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}

</style>
</head>
<body>
<div class="navbar"> 
		 <a href="AdminMainPage.jsp"><i class="split"></i> Home</a> 
		 <a href="StaffView.jsp"><i class="split"></i> Staff</a>
		 <a href="ListCustomer.jsp"><i class="split"></i> Customer</a> 
		 <a href="ServicerView.jsp"><i class="" class="split"></i> Servicer</a> 
		 <a href="staffListMaintenance.jsp"><i class="" class="split"></i> Maintenance</a>
		 <a class="active" href=""><i class="" class="split"></i> Assets</a> 
		 <a href="StaffListBooking.jsp"><i class="split"></i> Booking</a> 
		 
		 <li style="float:right"><a href="#"><i class="fa fa-sign-out" class="split"></i> Logout</a> 
		</div> 

<div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2>List Assets</h2>
					</div>
					<div class="col-sm-6">
						<a href="AddAssets.jsp" class="btn btn-success"> <i class="material-icons">&#xE147;</i>Add New Assets</a>
											
					</div>
				</div>
			</div>
			<table class="table table-striped table-hover">

	<table style = "width:100%;text-align:center;">
  		<tr>
		   	<th>Asset ID </th>
		    <th>Asset Name </th>
		    <th>Asset Quantity</th>
		    <th>Asset Category</th>
		    <th>Action</th>
  		</tr>
  		<tr>
		 	<c:forEach items="${assets}" var="asset">
				<tr>
					<td><c:out value="${asset.assetsid}" /></td>
					<td><c:out value="${asset.assetsname}" /></td>
					<td><c:out value="${asset.assetsquantity}" /></td>
					<td><c:out value="${asset.assetscategory}" /></td>
					<td><a class="button" href="AssetsController?action=view&assetsid=<c:out value="${asset.assetsid}"/>"> View</a>
						<a class="button"  href="UpdateAssetController?action=update&assetsid=<c:out value="${asset.assetsid}"/>">Update</a>
					</td>
				</tr>
			</c:forEach>
  		</tr>
  
	</table>

</body>
</html>