<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="Form.css" rel="stylesheet" type="text/css">
<title>Staff Registration Form</title>
</head>
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

</body>
</html>