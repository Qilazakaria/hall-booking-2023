<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"  
   uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="assets/css/customernavigation.css" rel="stylesheet" type="text/css">
<link href="assets/css/Assets.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<title>List Customer</title>
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
 <a href="#"><i class="" class="split"></i> Home</a> 
 <a href="#"><i class="" class="split"></i> Staff</a> 
 <a href="#" ><i class="class="active" class="split"></i> Customer</a> 
 <a href="#"><i class="" class="split"></i> Servicer</a> 
 <a class="" href="#"><i class="" class="split"></i> Maintenance</a> 
 <a href="#" ><i class="" class="split"></i>Assets</a>
  <a href="#" ><i class="" class="split"></i>Booking</a>  

  <li style="float:right"><a href="#"><i class="fa fa-sign-out" class="split"></i> Logout</a>
</div>

<div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2>List Customers</h2>
					</div>
					<div class="col-sm-6">
						<a href="AddCustomer.jsp?action=add" class="btn btn-success"> <i class="material-icons">&#xE147;</i>Add New Customer</a>
											
					</div>
				</div>
			</div>
			<table class="table table-striped table-hover">

	<table style = "width:100%;text-align:center;">
  		<tr>
		   	<th>Customer ID</th>
		    <th>Customer Name </th>
		    <th>Identity Card</th>
		    <th>Action</th>
  		</tr>
  		<tr>
		 	<c:forEach items="${customers}" var="customer">
				<tr>
					<td><c:out value="${customer.custid}" /></td>
					<td><c:out value="${customer.custname}" /></td>
					<td><c:out value="${customer.custidentificationcard}" /></td>
					<td><a class="button" href="CustomerController?action=view&custid=<c:out value="${customer.custid}"/>"> VIEW</a>
						<a class="button"  href="UpdateCustomerController?action=update&custid=<c:out value="${customer.custid}"/>">UPDATE</a>
						<a href="CustomerController?action=delete&custid=<c:out value="${customer.custid}" />" class="button" onclick="confirmation(this.id)">DELETE</a>
					</td>
				</tr>
			</c:forEach>
			</tr>
	</table>
	
<script>
   function confirmation(id){					  		 
   console.log(id);
   var r = confirm("Are you sure you want to delete?");
   if (r == true) {				 		  
	location.href = 'CustomerController?custid=' + custid;
	alert("Customer successfully deleted");			
  	} else {				  
  	return false;	
   }
     }
</script>
</body>
</html>