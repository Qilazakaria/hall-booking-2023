<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="assets/css/ABooking.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="assets/css/customernavigation.css"> 
<link rel="stylesheet" href="assets/css/staffadd.css"> 
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 

<title>Staff Update Form</title>
</head>
<body>
<%@page import="Servicer.servicerDAO,Servicer.servicer"%>  
  
<%  
String servicerid=request.getParameter("servicerid");  
servicer s=servicerDAO.getRecordById(Integer.parseInt(servicerid));  
%>   
   <div class="navbar"> 
		 <a href="AdminMainPage.jsp"><i class="split"></i> Home</a> 
		 <a  href="StaffView.jsp"><i class="split"></i> Staff</a>
		 <a href="ListCustomer.jsp"><i class="split"></i> Customer</a> 
		 <a class="active"  href="ServicerView.jsp"><i class="" class="split"></i> Servicer</a> 
		 <a href="staffListMaintenance.jsp"><i class="" class="split"></i> Maintenance</a>
		 <a href=""><i class="" class="split"></i> Assets</a> 
		 <a  href="StaffListBooking.jsp"><i class="split"></i> Booking</a> 
		 
		 <li style="float:right"><a href="#"><i class="fa fa-sign-out" class="split"></i> Logout</a> 
		</div>
		
	<div class="container" style=text-align:center>
  	<form action="ServicerUpdateFunction.jsp" method="post">
  	<h2>UPDATE SERVICER</h2>
  	<input type="hidden" name="servicerid" value="<%=s.getServicerid() %>"/>
			
	<br><br>    
	<label for="servicername">NAME: </label><br>
    <input type="text"  name="servicername" value="<%=s.getServicername() %>" ><br><br>
    
    <label for="servicertelno">EMAIL:</label><br>
    <input type="text"  name="servicertelno" value="<%=s.getServicertelno() %>" ><br><br>

    
    <label for="servicerhomeno">HOME NUMBER:</label><br>
    <input type="text"  name="servicerhomeno" value="<%=s.getServicerhomeno() %>" ><br><br>

    
    <label for="serviceraddress">ADDRESS: </label><br>
    <input type="text" name="serviceraddress" value="<%=s.getServiceraddress() %>" ><br><br>

    
    <label for="servicercity">CITY:</label><br>
    <input type="text"  name="servicercity" value="<%=s.getServicercity() %>" ><br><br>

    
    <label for="servicerpostcode">POSTCODE:</label><br>
    <input type="text"  name="servicerpostcode" value="<%=s.getServicerpostcode() %>" ><br><br>
 
    
    <label for="servicerState">STATE: </label><br>
    <select id="servicerstate" name = "servicerstate"  class = "custom-select" >
		<option value="" ></option>	
		<option value="JOHOR">JOHOR</option>
		<option value="MELAKA">MELAKA</option>
		<option value="KEDAH">KEDAH</option>
		<option value="KELANTAN">KELANTAN</option>
		<option value="NEGERI SEMBILAN">NEGERI SEMBILAN</option>
		<option value="PAHANG">PAHANG</option>
		<option value="PERAK">PERAK</option>
		<option value="PERLIS">PERLIS</option>
		<option value="SELANGOR">SELANGOR</option>
		<option value="TERENGGANU">TERENGGANU</option>
		<option value="PULAU PINANG">PULAU PINANG</option>
		<option value="SABAH">SABAH</option>
		<option value="SARAWAK">SARAWAK</option>
		<option value="KUALA LUMPUR">KUALA LUMPUR</option>
		<option value="PUTRAJAYA">PUTRAJAYA</option>
	</select><br>
    
    <br>
	
    <input type="submit" value="Submit">
    <br>
  </form>
</div>
<a href="ServicerView.jsp"><button class="button">BACK</button></a> 
</body>
</html>