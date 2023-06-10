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
		<title>Login Page | Hall Booking System</title>
		
	<link href="assets/css/Login.css" rel="stylesheet">
		<style>
			body {
				background-image : url('assets/images/Login.jpg');
			}
		</style>
		
		<script type="text/javascript">
			function removeSessionID() {
				sessionStorage.removeItem("loginID");
			}
		</script>
	</head>
<body onload="removeSessionID()"> 
    <div class="center">
        <h1>ADMIN LOGIN</h1>
        <form action="Login_Servlet" method="post">
            <div class="txt_field">
                <input type="text" placeholder="Username" name="username" required>
            </div>
            <div class="txt_field">
                <input type="password" placeholder="Password" name="password" required>
            </div>
            <div class="signup_link">
                
                <input type="submit" value="Login">
                <br>
                <a href="CustomerLogin.jsp">Login as customer</a>
            </div>
            
             <c:if test="${errorMessage != null}">
                <div class="error-message">
                    <c:out value="${errorMessage}"/>
                </div>
            </c:if>
        </form>
    </div>
</body>
</html>