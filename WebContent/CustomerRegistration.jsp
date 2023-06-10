<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Customer SignUp Page | Hall Booking System</title>
		<link href="assets/css/Login.css" rel="stylesheet">
		<style>
			body {
				background-image : url('assets/images/Login.jpg');
			}
			input{
				width: 100%;
				padding: 0 5px;
				height: 40px;
				font-size: 16px;
				border: none;
				background: none;
				outline: none;
				border-bottom: 2px solid #adadad;
			}
		</style>
	</head>
	<body>
	    <div class="center">
	        <h1>CUSTOMER SIGNUP</h1>
	        <form action="/Academic_System_Maven/CustomerRegistrationProcess" method="post">
                <input type="text" placeholder="Identification Card" name="custidentificationcard" required>
         
                <input type="text" placeholder="Name" name="custname" required>
          
                <input type="text" placeholder="Phone" name="custtelnum" required>
            
                <input type="number" placeholder="Home Number" name="custhomeno" required>
            
                <input type="text" placeholder="Home Address" name="custaddress" required>
           
                <input type="text" placeholder="City" name="custcity" required>
            
                <input type="number" placeholder="Poscode" name="custpostcode" required>
            
                <input type="text" placeholder="State" name="custstate" required>
            
                <input type="text" placeholder="Email" name="custemail" required>
            
                <input type="password" placeholder="Password" name="custpass" required>
	            <div class="signup_link">
	                <input type="submit" value="Sign Up">
	                <br>
	                <br>
	                <a href="index.jsp">Login as staff</a>
	            </div>
	        </form>
	    </div>
	</body>
</html>