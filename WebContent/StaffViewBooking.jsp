<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="assets/css/ABooking.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="assets/css/customernavigation.css"> 
<link rel="stylesheet" href="assets/css/staffadd.css"> 
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
	  color: black;
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
  
 <%@page import="booking.bookingDAO,booking.Booking,java.util.*"%>
<%  
int bookingid = Integer.parseInt(request.getParameter("bookingid"));
Booking b = bookingDAO.getRecordById(bookingid);
%>      
 
 
 

<div class="navbar"> 
		 <a href="AdminMainPage.jsp"><i class="split"></i> Home</a> 
		 <a href="StaffView.jsp"><i class="split"></i> Staff</a>
		 <a href="ListCustomer.jsp"><i class="split"></i> Customer</a> 
		 <a href="ServicerView.jsp"><i class="" class="split"></i> Servicer</a> 
		 <a href="staffListMaintenance.jsp"><i class="" class="split"></i> Maintenance</a>
		 <a href=""><i class="" class="split"></i> Assets</a> 
		 <a class="active" href="StaffListBooking.jsp"><i class="split"></i> Booking</a> 
		 
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
		    <th>DESCRIPTION</th>
		    <th>CAPACITY</th>
		    <th>PRICE</th>
		    
		  </tr>
		  <tr>
		    <td><%= b.getBookingid() %></td>
		    <td><%= b.getBookingdate() %></td>
		    <td><%= b.getBookingtime() %></td>
		    <td><%= b.getBookingdescription() %></td>
		    <td><%= b.getBookingestimatecapacity() %></td>
		    <td><%= b.getBookingprice() %></td>
		  </tr>
		
			
		</table>
		<br></br>
			
<a style="float:left"href="StaffListBooking.jsp" button class="button button2">BACK</button></a>
	
</body>
</html>

