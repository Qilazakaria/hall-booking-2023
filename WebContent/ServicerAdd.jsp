<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="assets/css/ABooking.css" rel="stylesheet" type="text/css">
<link href="assets/css/staffadd.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="assets/css/customernavigation.css"> 
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
  
<title>Staff Registration Form</title>
</head>
<body>
	<div class="navbar"> 
	 <a href="AdminMainPage.jsp"><i class="split"></i> Home</a> 
	 <a href="StaffView.jsp"><i class="split"></i> Staff</a>
	 <a href="ListCustomer.jsp"><i class="split"></i> Customer</a> 
	 <a class="active" href="ServicerView.jsp"><i class="" class="split"></i> Servicer</a> 
	 <a href="staffListMaintenance.jsp"><i class="" class="split"></i> Maintenance</a>
	 <a href="AssetsController?action=list"><i class="" class="split"></i> Assets</a> 
	 <a href="StaffListBooking.jsp"><i class="split"></i> Booking</a> 
	 
	 <li style="float:right"><a href="#"><i class="fa fa-sign-out" class="split"></i> Logout</a> 
	</div> 
	<div class="container" style=text-align:center>
  	<form action="ServicerAddFunction.jsp" method="post" id="wizard">
  	<h2>REGISTER NEW SERVICER</h2>
  	
	<br><br>    
	<label for="servicername">NAME: </label><br>
    <input type="text"  name="servicername" id="servicername" required><br><br>
    
    <label for="servicertelno">TELEHONE NUMBER:</label><br>
    <input type="text"  name="servicertelno" id="servicertelno" required><br><br>
    
    <label for="servicerhomeno">HOME NUMBER:</label><br>
    <input type="text"  name="servicerhomeno" id="servicerhomeno" required><br><br>
    
    <label for="serviceraddress">ADDRESS: </label><br>
    <input type="text" name="serviceraddress" id="serviceraddress" required><br><br>
    
    <label for="servicercity">CITY:</label><br>
    <input type="text"  name="servicercity" id="servicercity" required><br><br>
    
    <label for="servicerpostcode">POSTCODE:</label><br>
    <input type="text"  name="servicerpostcode" id="servicerpostcode" required><br><br>
    
    <label for="servicerstate">STATE: </label><br>
    <select id="servicerstate" name = "servicerstate" class = "custom-select" required>
		<option value=""></option>	
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
	
    <input type="submit" value="CREATE ACCOUNT">
    <br>
  </form>
</div>
<a href="ServicerView.jsp"><button class="button">BACK</button></a> 
</body>
</html>