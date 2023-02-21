<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c"  
   uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="assets/css/ABooking.css" rel="stylesheet" type="text/css">
<link href="assets/css/staffadd.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="assets/css/customernavigation.css"> 
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
  

<title>Update Asset</title>
</head>
<body>
 <div class="navbar"> 
		 <a href="AdminMainPage.jsp"><i class="split"></i> Home</a> 
		 <a href="StaffView.jsp"><i class="split"></i> Staff</a>
		 <a href="ListCustomer.jsp"><i class="split"></i> Customer</a> 
		 <a href="ServicerView.jsp"><i class="" class="split"></i> Servicer</a> 
		 <a href="staffListMaintenance.jsp"><i class="" class="split"></i> Maintenance</a>
		 <a class="active" href="AssetsController?action=list"><i class="" class="split"></i> Assets</a> 
		 <a href="StaffListBooking.jsp"><i class="split"></i> Booking</a> 
		 
		 <li style="float:right"><a href="#"><i class="fa fa-sign-out" class="split"></i> Logout</a> 
		</div>

<div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
                       <h2></h2>
        </div>
</div>
		</div>
		</div>
		</div>
		</div>
<table class="table table-striped table-hover">
<center>
<div class="form">
 <form action="UpdateAssetController" method="POST"> 
        
       	Asset Name:
       	<input type="text" id="assetsname" name="assetsname" value="<c:out value="${asset.assetsname}"/>" disabled/><br><br>
       	
       	Asset Quantity:
       	<input type="number" id="assetsquantity" name="assetsquantity" value="<c:out value="${asset.assetsquantity}"/> "><br><br>
       	
       	Asset Category:
       	<input type=text  id="assetscategory" name="assetscategory" value="<c:out value="${asset.assetscategory}" />"disabled/><br><br>
       	
       	Furniture Material:
       	<input type="text" id="furnmaterial" name="furnmaterial" value="<c:out value="${asset.furnmaterial}"/>" disabled/><br><br>
       	
       	Electrical Voltage:
       	<input type="text" id="electvoltage" name="electvoltage" value="<c:out value="${asset.electvoltage}"/>" disabled/><br><br>
       	
       	Voltage Material:
       	<input type="text" id="voltageunit" name="voltageunit" value="<c:out value="${asset.voltageunit}"/>" disabled/><br><br>
       	
       	<input type="hidden" id="assetsid" name="assetsid" value="<c:out value="${asset.assetsid}"/>"><br>
       	
       
        <input type="submit" value="Submit">
        
  </form>
  </table>
  </center>
  </div>
<a href="AssetsController?action=list"><button class="button">BACK</button></a> 
</body>
</html>