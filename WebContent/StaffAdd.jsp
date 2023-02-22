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
	
<title>Staff Registration Form</title>
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
	<div class="navbar"> 
		 <a href="AdminMainPage.jsp"><i class="split"></i> Home</a> 
		 <a class="active" href="StaffView.jsp"><i class="split"></i> Staff</a>
		 <a href="ListCustomer.jsp"><i class="split"></i> Customer</a> 
		 <a href="ServicerView.jsp"><i class="" class="split"></i> Servicer</a> 
		 <a href="staffListMaintenance.jsp"><i class="" class="split"></i> Maintenance</a>
		 <a href="AssetsController?action=list"><i class="" class="split"></i> Assets</a> 
		 <a  href="StaffListBooking.jsp"><i class="split"></i> Booking</a> 
		 
		 <li style="float:right"><a href="#"><i class="fa fa-sign-out" class="split"></i> Logout</a> 
		</div> 
<body>
	<div class="container" style=text-align:center>
  	<form action="StaffAddFunction.jsp" method="post" id="wizard">
  	<h2>REGISTER NEW STAFF ACCOUNT</h2>
  	
	<br><br> 
	   
	<label for="staffname">NAME: </label><br>
    <input type="text"  name="staffname" id="staffname" required><br>
    
    <label for="staffemail">EMAIL:</label><br>
    <input type="email"  name="staffemail" id="staffemail" required><br>
    
    <label for="staffhomeno">HOME NUMBER:</label><br>
    <input type="text"  name="staffhomeno" id="staffhomeno" required><br>
    
    <label for="staffaddress">ADDRESS: </label><br>
    <input type="text" name="staffaddress" id="staffaddress" required><br>
    
    <label for="staffcity">CITY:</label><br>
    <input type="text"  name="staffcity" id="staffcity" required><br>
    
    <label for="staffposcode">POSTCODE:</label><br>
    <input type="text"  name="staffposcode" id="staffposcode" required><br>
    
    <label for="staffstate">STATE: </label><br>
    <select id="staffstate" name = "staffstate" class = "custom-select" required>
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
    
    <label for="stafftelnum">TELEPHONE NO: </label><br>
    <input type="text" name="stafftelnum" id="stafftelnum" required><br>
    
    <label for="staffpass">PASSWORD:</label><br>
    <input type="password" name="staffpass" id="staffpass" required><br>
    
    <br>
    <input type="hidden" name="adminid" id="adminid" value="1"><br>
    <br>
	
    <input type="submit" value="CREATE ACCOUNT">
    <br>
  </form>
  
</div>
<a href="StaffView.jsp"><button class="button">BACK</button></a> 	
</body>
</html>