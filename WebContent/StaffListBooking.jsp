<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="assets/css/ABooking.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="assets/css/customernavigation.css"> 
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
	
	<title>List Booking</title>
	</head>
	<style>
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
	  background-color: #dddddd;
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
		
<body>
<%@page import="DAO.bookingDao,Model.booking,java.util.*"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>  
   
<%  
List<booking> list=bookingDao.getAllRecords();  
request.setAttribute("list",list);  
%>  

<div class="navbar"> 
 <a href="AdminMainPage.jsp"><i class="fa fa-home" class="split"></i> Home</a> 
 <a href="#"><i class="" class="split"></i> Assets</a> 
 <a href="#"><i class="" class="split"></i> Maintenance</a> 
 <a href="#"><i class="" class="split"></i> Servicer</a> 
 <a class="active" href="StaffListBooking.jsp"><i class="" class="split"></i> Booking</a> 
 <a href="#"><i class="fa fa-users" class="split"></i> Customer</a> 
   <li style="float:right"><a href="index.jsp"><i class="fa fa-sign-out" class="split"></i> Logout</a> 
</div>
		<br></br>
		<table>
		 <br></br>
		 
		 <br></br>
		  <tr>
		  	<th>ID</th>
		    <th>DATE</th>
		    <th>TIME</th>
		    <th>ACTION</th>

		    
		  </tr>
		  <tr>
		   <c:forEach items="${list}" var="b">  
		   	<td>${b.getBookingID()}</td>
			<td>${b.getBookingDate()}</td>
			<td>${b.getBookingTime()}</td>
			
			<td>
			<a href="StaffViewBooking.jsp?bookingID=${b.getBookingID()}"><button class='edit'>VIEW</button> </a> </td>
			
			</td></tr>  
			</tbody>
			</c:forEach> 
		  
		  <tr>
		
			
		</table>
		<br></br>
	
		<a style="float:left"href="staffAddBooking.jsp" button class="button button2">ADD BOOKING</button></a>
		
	
</body>
</html>

