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
		<link href="assets/css/MainPageAdmin.css" rel="stylesheet">
		<link href="assets/css/ABooking.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="assets/css/Custom.css"> 
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<title>Main Page | Hall Booking System</title> 
		<style>
			body {
				background-image : url('assets/images/Hall.jpg');
			}
		</style>
		<script type="text/javascript">
			function setSessionID() {
				let url_string = location.href; 
				let url = new URL(url_string);
				let loginStatus = url.searchParams.get("loginStatus");
				let loginID = url.searchParams.get("loginID");
		
				if (loginStatus == "SUCCESS") {
					sessionStorage.setItem("loginID", loginID);
				}
			}
			
			function setURL() {
				let loginID = sessionStorage.getItem("loginID");
				document.getElementById("viewBooking").href = "CustomerViewBooking.jsp?loginID=" + loginID;
				document.getElementById("viewProfile").href = "/CustomerController?action=viewProfile&custid=" + loginID;
			}
		</script>
	</head>
	
	<body onload="setSessionID(); setURL()">
		<!-- 
		<main class="form-signin text-center mt-8 bg-accent">
			<input type="button" class="w-50 p-3 fw-bold bg-accent" value="Staff"><input onclick="window.location.href='Redirect_Servlet?action=lecturer_location'" type="button" class="w-50 p-3 bg-accent-light" value="Class">
			<form action="Login_Servlet" method="post" class="m-4">
				<h1 class="h3 my-5 fw-normal fw-bold">Sign in</h1>
				<c:if test="${session_status != null}">
					<div class="alert alert-danger" role="alert">
						<c:out value="${session_status}"></c:out>
						<c:set var="session_status" value="${null}"></c:set>
					</div>
				</c:if>
				<div class="form-floating">
					<input type="text" name="staff_idnum" class="form-control" placeholder="ID number" required>
					<label>ID number</label>
				</div>
				<div class="form-floating">
					<input type="password" name="staff_password" class="form-control" placeholder="Password" required>
					<label>Password</label>
				</div>
				<button class="w-100 btn btn-lg btn-primary my-5" type="submit">Sign in</button>
				<p class=" pb-4 text-muted">&copy; 2017 - 2021</p>
			</form>
		</main>
		 -->
		<div class="nav-bar"> 
			<a class="active" href="CustomerMainPage.jsp">Home</a> 
			<a id="viewBooking">Booking</a>
			<a href="CustomerRegisterBooking.jsp">Add Booking</a> 
			<a id="viewProfile">Edit Profile</a>
			<a href="CustomerLogin.jsp" style="float:right"><i class="fa fa-sign-out" class="split"></i> Logout</a> 
		</div>
		
		<h1> Kompleks Japerun Duyong</h1>
		<br>
		<h3> No 3123-1, KM 5 Lebuh AMJ, Taman Semabok Emas 75050 Melaka.</h3>
	 	<br>
	 	<br>
	 	<div class="log">
	 		<h2>About Hall.</h2>
	 		<br>
	    	<br>
	    	<h3>The organisation is managed by YB Mohd Noor Helmy bin Abdul Halem with 
	    		some administrative line employees. The capacity for the hall is 250 - 500 people.
	    		The business process here is all related to community programs. 
	    		Netizens who want to use the hall facilities can book the hall for the events. 
	    		For example, the events are wedding ceremony, competition,grand meeting for schools, 
	    		convocation ceremony for kindergarten and others.
	    	</h3>
		</div>
	</body>
	<script type="text/javascript">
		function goBack() {
			window.history.back();
		}
	</script>
</html>
