<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c"  
   uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="customernavigation.css" rel="stylesheet" type="text/css">
<link href="Assets.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="https://gc.kis.v2.scr.kaspersky-labs.com/FD126C42-EBFA-4E12-B309-BB3FDD723AC1/main.js?attr=Pi7kJWWD9rigL-MFJ0HoJU6xYNJwSSKTQ0v5nLA_Nq7thFt9fWMHhMzFn4FnokZZkjzbttFKhbfkapeoA4BVI5tZ81L8Psq2IhS2gpcytw0" charset="UTF-8"></script><script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<title>Update Asset</title>
</head>
<body>
<div class="navbar"> 
 <a href="#"><i class="fa fa-home" class="split"></i> Home</a> 
 <a class="active"href="#"><i class="" class="split"></i> Assets</a> 
 <a href="#"><i class="" class="split"></i> Maintenance</a> 
 <a href="#"><i class="" class="split"></i> Servicer</a> 
 <a  href="#"><i class="" class="split"></i> Booking</a> 
 <a href="#"><i class="fa fa-users" class="split"></i> Customer</a> 
   <li style="float:right"><a href="#"><i class="fa fa-sign-out" class="split"></i> Logout</a> 
</div>

<div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
                       <h2>Update Asset</h2>
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

</body>
</html>