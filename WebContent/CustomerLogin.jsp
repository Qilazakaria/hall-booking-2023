<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Customer Login Page | Hall Booking System</title>
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
	        <h1>CUSTOMER LOGIN</h1>
	        <form action="CustLogin_Servlet" method="post">
	            <div class="txt_field">
	                <input type="text" placeholder="Username" name="username" required>
	            </div>
	            <div class="txt_field">
	                <input type="password" placeholder="Password" name="password" required>
	            </div>
	            <div class="signup_link">
	                Don't have account ? <a href="CustomerRegistration.jsp">SignUp</a>
	                <br>
	                <input type="submit" value="Login">
	                <br>
	                <a href="index.jsp">Login as Staff</a>
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