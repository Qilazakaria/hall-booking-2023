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
		  color: #3A9BDC;
		  padding: 10px 22px;
		  text-align: center;
		  text-decoration: none;
		  display: inline-block;
		  font-size: 16px;
		  margin: 2px 2px;
		  transition-duration: 0.4s;
		  cursor: pointer;
		}
		
		.button2 {
		  background-color: #52BE80; 
		  color: black; 
		  border: 2px solid #52BE80;
		}
		
		.button2:hover {
		  background-color: #52BE80;
		  color: black;
		}
	</style>
<body onload="displayStatus()">
<%@page import="staff.staffDAO,staff.Staff,java.util.*"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>  
   
<%  
List<Staff> list=staffDAO.getAllRecords();  
request.setAttribute("list",list);  
%> 


	<div class="navbar"> 
		 <a href="AdminMainPage.jsp"><i class="split"></i> Home</a> 
		 <a class="active" href="StaffView.jsp"><i class="split"></i> Staff</a>
		 <a href="ListCustomer.jsp"><i class="split"></i> Customer</a> 
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
		<table>
		<thead>
			<tr>
			  	<th>ID</th>
			  	<th>NAME</th>
			    <th>EMAIL</th>
			    <th>ADDRESS</th>
			    <th>PASSWORD</th>
			    <th>TELEPHONE NUMBER</th>
			    <th>ADMIN ID</th>
			    <th>ACTION</th>
		  	</tr>
		</thead>  
		<tbody>
		   <c:forEach items="${list}" var="s">
		  		<tr>  
				   	<td>${s.getStaffid()}</td>
				   	<td>${s.getStaffname()}</td>
					<td>${s.getStaffemail()}</td>
					<td>${s.getStaffhomeno()}, ${s.getStaffaddress()}, ${s.getStaffcity()}, ${s.getStaffposcode()}, ${s.getStaffstate()}.</td>
					<td>${s.getStaffpass()}</td>
					<td>${s.getStafftelnum()}</td>
					<td>${s.getAdminid()}</td>  
					<td><a href="StaffUpdate.jsp?staffid=${s.getStaffid()}"><button class='edit'>UPDATE</button> </a></td>
				</tr>  
			</c:forEach>
		</tbody>
		</table>
		<br></br>
	
		<a style="float:left"href="StaffAdd.jsp" button class="button button2">ADD STAFF</button></a>

</body>
</html>