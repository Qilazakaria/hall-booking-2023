<%@page import="DAO.CustomersDAO"%>
<%@page import="Model.Customers"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="assets/css/ABooking.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="assets/css/customernavigation.css"> 
<link rel="stylesheet" href="assets/css/bookingForm.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
<title>Staff</title>
<script>
	function displayStatus() {
		let url_string = location.href; 
		let url = new URL(url_string);
		let status = url.searchParams.get("status");

		if (status == "SUCCESS") {
			document.getElementById("success").style.display = "block";
		} else if (status == "FAIL") {
			document.getElementById("alert").style.display = "block";
		}
	}
</script>
</head>
	<style>
		.alert {
		  padding: 20px;
		  background-color: #f44336;
		  color: white;
		  margin: 20px 100px;
		}
		
		.success {
		  padding: 20px;
		  background-color: #04AA6D;
		  color: white;
		  margin: 20px 100px;
		}
		
		.closebtn {
		  margin-left: 15px;
		  color: white;
		  font-weight: bold;
		  float: right;
		  font-size: 22px;
		  line-height: 20px;
		  cursor: pointer;
		  transition: 0.3s;
		}
		
		.closebtn:hover {
		  color: black;
		}
		
		table {
		  font-family: arial, sans-serif;
		  border-collapse: collapse;
		  width: 95%;
		  margin:auto;
		}
		
		td, th {
		  border: 1px solid #dddddd;
		  text-align: center;
		  padding: 8px;
		}
		
		tr:nth-child(even) {
		  background-color: #eeeeee;
		}
		
		.button {
		  border: none;
		  background-color: #3A9BDC;
		  padding: 10px 22px;
		  text-align: center;
		  text-decoration: none;
		  display: inline-block;
		  font-size: 16px;
		  margin: 20px;
		  transition-duration: 0.4s;
		  cursor: pointer;
		  float: right;
		  color: #fff
		}
	</style>
<body onload="displayStatus()">
<%@page import="staff.staffDAO,staff.Staff,java.util.*"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>  
   
<%  
List<Customers> list = CustomersDAO.getAllCustomer();  
request.setAttribute("list",list);  
%> 


	<div class="navbar"> 
		 <a href="AdminMainPage.jsp"><i class="split"></i> Home</a> 
		 <a href="StaffView.jsp"><i class="split"></i> Staff</a>
		 <a class="active" href="ListCustomer.jsp"><i class="split"></i> Customer</a> 
		 <a href="ServicerView.jsp"><i class="" class="split"></i> Servicer</a> 
		 <a href="staffListMaintenance.jsp"><i class="" class="split"></i> Maintenance</a>
		 <a href="ListAssets.jsp"><i class="" class="split"></i> Assets</a> 
		 <a  href="StaffListBooking.jsp"><i class="split"></i> Booking</a> 
		 
		 <li style="float:right"><a href="#"><i class="fa fa-sign-out" class="split"></i> Logout</a> 
		</div>
		<br>
		<div style="display: none" id="alert" class="alert">
		  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
		  <strong>Fail!</strong>
		</div>
		<div style="display: none" id="success" class="success">
		  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
		  <strong>Success!</strong>
		</div>
		<br>
		<a href="AddCustomer.jsp" class="button"><i class="fa fa-plus-circle" aria-hidden="true"></i> Add New Customer</a>
		<table>
		<thead>
			<tr>
			  	<th>ID</th>
			  	<th>NAME</th>
			    <th>IC</th>
			    <th>ACTION</th>
		  	</tr>
		</thead>  
		<tbody>
		   <c:forEach items="${list}" var="cust">
		  		<tr>  
				   	<td>${cust.getCustid()}</td>
				   	<td>${cust.getCustname()}</td>
					<td>${cust.getCustidentificationcard()}</td>
					<td>
						<a class="button" href="/Academic_System_Maven/CustomerController?action=view&custid=<c:out value="${cust.custid}"/>"> VIEW</a>
						<a class="button" href="/Academic_System_Maven/UpdateCustomerController?action=update&custid=<c:out value="${cust.custid}"/>">UPDATE</a>
						<a class="button" href="javascript:void(0);" onclick="confirmation(<c:out value="${cust.custid}"/>)">DELETE</a>
					</td>
				</tr>  
			</c:forEach>
		</tbody>
		</table>
		<br></br>
		<script>
		   	function confirmation(id){					  		 
			   console.log(id);
			   var r = confirm("Are you sure you want to delete?");
			   if (r == true) {				 		  
					location.href = '/Academic_System_Maven/CustomerController?action=delete&custid=' + id;
					alert("Customer successfully deleted");			
			  	} else {				  
			  		return false;	
			   }
			}
		</script>
		
</body>
</html>