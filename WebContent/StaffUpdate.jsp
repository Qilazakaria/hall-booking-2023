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
<%@page import="staff.staffDAO,staff.Staff"%>  
  
<%  
String staffid=request.getParameter("staffid");  
Staff s=staffDAO.getRecordById(Integer.parseInt(staffid));  
%>   
  <div class="navbar"> 
		 <a href="AdminMainPage.jsp"><i class="split"></i> Home</a> 
		 <a class="active"   href="StaffView.jsp"><i class="split"></i> Staff</a>
		 <a href="ListCustomer.jsp"><i class="split"></i> Customer</a> 
		 <a href="ServicerView.jsp"><i class="" class="split"></i> Servicer</a> 
		 <a href="staffListMaintenance.jsp"><i class="" class="split"></i> Maintenance</a>
		 <a href=""><i class="" class="split"></i> Assets</a> 
		 <a  href="StaffListBooking.jsp"><i class="split"></i> Booking</a> 
		 
		 <li style="float:right"><a href="#"><i class="fa fa-sign-out" class="split"></i> Logout</a> 
		</div> 
	<div class="container" style=text-align:center>
  	<form action="StaffUpdateFunction.jsp" method="post">
  	<h2>UPDATE STAFF ACCOUNT</h2>
  	<input type="hidden" name="staffid" value="<%=s.getStaffid() %>"/>
			
	<br><br>    
	<label for="staffname">NAME: </label><br>
    <input type="text"  name="staffname" value="<%=s.getStaffname() %>"  ><br>
    
    <label for="staffemail">EMAIL:</label><br>
    <input type="email"  name="staffemail" value="<%=s.getStaffemail() %>" ><br>

    
    <label for="staffhomeno">HOME NUMBER:</label><br>
    <input type="text"  name="staffhomeno" value="<%=s.getStaffhomeno() %>" ><br>

    
    <label for="staffaddress">ADDRESS: </label><br>
    <input type="text" name="staffaddress" value="<%=s.getStaffaddress() %>" ><br>

    
    <label for="staffcity">CITY:</label><br>
    <input type="text"  name="staffcity" value="<%=s.getStaffcity() %>" ><br>

    
    <label for="staffposcode">POSTCODE:</label><br>
    <input type="text"  name="staffposcode" value="<%=s.getStaffposcode() %>" ><br>
 
    
    <label for="staffstate">STATE: </label><br>
    <select id="staffstate" name = "staffstate"  class = "custom-select" >
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
    
    <label for="stafftelnum">TELEPHONE NO: </label><br>
    <input type="text" name="stafftelnum" value="<%=s.getStafftelnum() %>" ><br>

    
    <label for="staffpass">PASSWORD:</label><br>
    <input type="password" name="staffpass" value="<%=s.getStaffpass() %>" ><br>

    
    <label for="adminid">ADMIN ID:</label><br>
    <input type="text" name="adminid" value="<%=s.getAdminid() %>"  disabled/><br>

    <br>
	
    
    <input type="submit" value="Submit">
    <br>
  </form>
</div>
<a href="StaffView.jsp"><button class="button">BACK</button></a> 
</body>
</html>