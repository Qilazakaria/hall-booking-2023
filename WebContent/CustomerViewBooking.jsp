<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"  
   uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your Booking</title>
<link rel="stylesheet" href="css/Maintenance.css">
<link rel="stylesheet" href="css/customenav.css">
</head>

<body>
<div class="navbar"> 
 <a href="#"><i class="fa fa-home" class="split"></i> Home</a> 
 <a class="active" href="BookingController?action=list"><i class="" class="split"></i> Booking</a> 
 <a href="customerRegisterBooking.jsp"><i class="fa fa-users" class="split"></i> Add Booking</a>
 <li style="float:right"><a href="#"><i class="fa fa-sign-out" class="split"></i> Logout</a> 
</div>
</a>
<h1>Booking</h1>
	<table align=center>
  		<thead> 
			<tr>
			<th>Booking ID</th>
			<th>Booking Date</th>
    		<th>Booking Time</th>
   	 		<th>Booking Description</th>
    		<th>Booking Estimated Capacity</th>
    		<th>Booking Price</th>
    		<th>Update</th>  
			<tr>
		</thead>
		<tbody>
		<tr>
		<c:forEach items="${list}" var="booking">  
		<td><c:out value="${booking.bookingid}"/></td>
		<td><c:out value="${booking.bookingdate}"/></td>
		<td><c:out value="${booking.bookingtime}"/></td>  
		<td><c:out value="${booking.bookingdescription}"/></td>
		<td><c:out value="${booking.bookingestimatecapacity}"/></td>
		<td><c:out value="${booking.bookingprice}"/></td>
		<tr>
		</c:forEach> 
		</tbody>
	</table>
<a href="AdminMainPage.html">
<input type="submit" name="back" value="Back">
</a>
</body>
</html>

</body>
</html>