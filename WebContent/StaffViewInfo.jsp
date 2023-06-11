<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
		<link rel="stylesheet" href="assets/css/Custom.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<title>Staff Page | Hall Booking System</title>
	</head>
	<body>
		<%@page import="staff.staffDAO,staff.Staff"%>  
  
		<%  
			String staffid = request.getParameter("staffid");  
			Staff staff = staffDAO.getRecordById(Integer.parseInt(staffid));  
		%>
		<div class="nav-bar"> 
			<a href="AdminMainPage.jsp">Home</a>
			<a class="active" href="StaffView.jsp">Staff</a>
			<a href="ListCustomer.jsp">Customer</a>
			<a href="ServicerView.jsp">Servicer</a>
			<a href="MaintenanceController?action=list">Maintenance</a>
			<a href="AssetsController?action=list">Assets</a>
			<a href="StaffListBooking.jsp">Booking</a>
			<a style="float:right" href="index.jsp"><i class="fa fa-sign-out" class="split"></i> Logout</a>
		</div>
		<div class="card w-50" style="margin: 10px auto">
			<h5 class="card-header"><b>VIEW STAFF</b></h5>
			<div class="card-body">
				<label class="form-label" for="staffname">Name <span class="text-danger fw-bold">*</span> : </label>
			    <input class="form-control mb-2" type="text"  name="staffname" id="staffname" value="<%=staff.getStaffname() %>" disabled>
			    
			    <label class="form-label" for="staffemail">Email <span class="text-danger fw-bold">*</span> : </label>
			    <input class="form-control mb-2" type="email"  name="staffemail" id="staffemail" value="<%=staff.getStaffemail() %>" disabled>
			    
			    <label class="form-label" for="staffhomeno">Home No. <span class="text-danger fw-bold">*</span> : </label>
			    <input class="form-control mb-2" type="number"  name="staffhomeno" id="staffhomeno" value="<%=staff.getStaffhomeno() %>" disabled>
			    
			    <label class="form-label" for="staffaddress">Address <span class="text-danger fw-bold">*</span> : </label>
			    <input class="form-control mb-2" type="text" name="staffaddress" id="staffaddress" value="<%=staff.getStaffaddress() %>" disabled>
			    
			    <label class="form-label" for="staffcity">City <span class="text-danger fw-bold">*</span> : </label>
			    <input class="form-control mb-2" type="text"  name="staffcity" id="staffcity" value="<%=staff.getStaffcity() %>" disabled>
			    
			    <label class="form-label" for="staffposcode">PostCode <span class="text-danger fw-bold">*</span> : </label>
			    <input class="form-control mb-2" type="number"  name="staffposcode" id="staffposcode" value="<%=staff.getStaffposcode() %>" disabled>
			    
			    <label class="form-label" for="staffstate">State <span class="text-danger fw-bold">*</span> : </label>
			    <select class="form-select mb-2" id="staffstate" name="staffstate" disabled>
					<option <%= (staff.getStaffstate().equals("")?"selected='selected'":"") %> value="" ></option>	
					<option <%= (staff.getStaffstate().equals("JOHOR")?"selected='selected'":"") %> value="JOHOR">JOHOR</option>
					<option <%= (staff.getStaffstate().equals("MELAKA")?"selected='selected'":"") %> value="MELAKA">MELAKA</option>
					<option <%= (staff.getStaffstate().equals("KEDAH")?"selected='selected'":"") %> value="KEDAH">KEDAH</option>
					<option <%= (staff.getStaffstate().equals("KELANTAN")?"selected='selected'":"") %> value="KELANTAN">KELANTAN</option>
					<option <%= (staff.getStaffstate().equals("NEGERI SEMBILAN")?"selected='selected'":"") %> value="NEGERI SEMBILAN">NEGERI SEMBILAN</option>
					<option <%= (staff.getStaffstate().equals("PAHANG")?"selected='selected'":"") %> value="PAHANG">PAHANG</option>
					<option <%= (staff.getStaffstate().equals("PERAK")?"selected='selected'":"") %> value="PERAK">PERAK</option>
					<option <%= (staff.getStaffstate().equals("PERLIS")?"selected='selected'":"") %> value="PERLIS">PERLIS</option>
					<option <%= (staff.getStaffstate().equals("SELANGOR")?"selected='selected'":"") %> value="SELANGOR">SELANGOR</option>
					<option <%= (staff.getStaffstate().equals("TERENGGANU")?"selected='selected'":"") %> value="TERENGGANU">TERENGGANU</option>
					<option <%= (staff.getStaffstate().equals("PULAU PINANG")?"selected='selected'":"") %> value="PULAU PINANG">PULAU PINANG</option>
					<option <%= (staff.getStaffstate().equals("SABAH")?"selected='selected'":"") %> value="SABAH">SABAH</option>
					<option <%= (staff.getStaffstate().equals("SARAWAK")?"selected='selected'":"") %> value="SARAWAK">SARAWAK</option>
					<option <%= (staff.getStaffstate().equals("KUALA LUMPUR")?"selected='selected'":"") %> value="KUALA LUMPUR">KUALA LUMPUR</option>
					<option <%= (staff.getStaffstate().equals("PUTRAJAYA")?"selected='selected'":"") %> value="PUTRAJAYA">PUTRAJAYA</option>
				</select>
			    
			    <label class="form-label" for="stafftelnum">Telephone No. <span class="text-danger fw-bold">*</span> : </label>
			    <input class="form-control mb-2" type="text" name="stafftelnum" id="stafftelnum" value="<%=staff.getStafftelnum() %>" disabled>

			    <label class="form-label" for="adminid">Admin ID : </label>
			    <input class="form-control mb-2" type="text" name="adminid" id="adminid" value="1" disabled>
			</div>
		</div>
		<div class="col input-group m-4">
			<span class="input-group-text text-white bg-primary bg-opacity-75 border border-primary">
				<i class="fa fa-arrow-left"></i>
			</span>
			<a href="StaffView.jsp" class="btn btn-primary">Back</a> 
		</div>
	</body>
</html>