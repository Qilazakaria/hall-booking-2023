<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="">
		<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
		<meta name="generator" content="Hugo 0.84.0">
		<!-- <title>UiTM | Academic Inventory System</title> -->
		<!-- <link rel="icon" href="assets/images/UiTM_logo.png"> -->
		<!-- <link href="assets/css/bootstrap.css" rel="stylesheet"> -->
		
	<link href="assets/css/Login.css" rel="stylesheet">
		<style>
			body {
				background-image : url('assets/images/Login.jpg');
			}
		</style>
	</head>
<body>
    <div class="center">
        <h1>CUSTOMER SIGNUP</h1>
        <form action="CustomerRegistrationProcess" method="post">
            <div class="txt_field">
                <input type="text" placeholder="Identification Card" name="custidentificationcard" required>
         
                <input type="text" placeholder="Name" name="custname" required>
          
                <input type="text" placeholder="Phone" name="custtelnum" required>
            
                <input type="text" placeholder="Home Number" name="custhomeno" required>
            
                <input type="text" placeholder="Home Address" name="custaddress" required>
           
                <input type="text" placeholder="City" name="custcity" required>
            
                <input type="text" placeholder="Poscode" name="custposcode" required>
            
                <input type="text" placeholder="State" name="custstate" required>
            
                <input type="text" placeholder="Email" name="cusemail" required>
            
                <input type="password" placeholder="Password" name="custpass" required>
            </div>
            <div class="signup_link">
               
                <input type="submit" value="Login">
                <br>
                <a href="staffLogin.jsp">Login as staff</a>
            </div>
            
        </form>
    </div>
</body>
</html>