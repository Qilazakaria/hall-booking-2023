
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
		<link rel="stylesheet" href="assets/css/Custom.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<title>Servicer Page | Hall Booking System</title>
		<script type="text/javascript">			
			function setURL() {
				let loginID = sessionStorage.getItem("loginID");
				document.getElementById("staffView").href = "StaffView.jsp?loginID=" + loginID;
			}
		</script>
	</head>
	<body onload="setURL()">
		<%@page import="Servicer.servicerDAO,Servicer.servicer"%>  
		  
		<%  
			String servicerid = request.getParameter("servicerid");  
			servicer servicer = servicerDAO.getRecordById(Integer.parseInt(servicerid));  
		%>
		<div class="nav-bar"> 
			<a href="AdminMainPage.jsp">Home</a>
			<a id="staffView">Staff</a>
			<a href="ListCustomer.jsp">Customer</a>
			<a class="active" href="ServicerView.jsp">Servicer</a>
			<a href="MaintenanceController?action=list">Maintenance</a>
			<a href="AssetsController?action=list">Assets</a>
			<a href="StaffListBooking.jsp">Booking</a>
			<a style="float:right" href="index.jsp"><i class="fa fa-sign-out" class="split"></i> Logout</a>
		</div>
		<div class="card w-50" style="margin: 10px auto">
			<h5 class="card-header"><b>UPDATE SERVICER</b></h5>
			<div class="card-body">
				<form action="ServicerUpdateFunction.jsp" method="post" id="wizard">
		    		<label class="form-label" for="servicername">Name <span class="text-danger fw-bold">*</span> : </label>
  					<input class="form-control mb-2" type="hidden" name="servicerid" id="servicerid" value="<%=servicer.getServicerid() %>"/>
				    <input class="form-control mb-2" type="text"  name="servicername" id="servicername" value="<%=servicer.getServicername() %>" required>
				    
				    <label class="form-label" for="servicertelno">Telephone Number <span class="text-danger fw-bold">*</span> :</label>
				    <input class="form-control mb-2" type="number"  name="servicertelno" id="servicertelno" value="<%=servicer.getServicertelno() %>" required>
				    
				    <label class="form-label" for="servicerhomeno">Home Number <span class="text-danger fw-bold">*</span> :</label>
				    <input class="form-control mb-2" type="number"  name="servicerhomeno" id="servicerhomeno" value="<%=servicer.getServicerhomeno() %>" required>
				    
				    <label class="form-label" for="serviceraddress">Address <span class="text-danger fw-bold">*</span> : </label>
				    <input class="form-control mb-2" type="text" name="serviceraddress" id="serviceraddress" value="<%=servicer.getServiceraddress() %>" required>
				    
				    <label class="form-label" for="servicercity">City <span class="text-danger fw-bold">*</span> :</label>
				    <input class="form-control mb-2" type="text"  name="servicercity" id="servicercity" value="<%=servicer.getServicercity() %>" required>
				    
				    <label class="form-label" for="servicerpostcode">PostCode <span class="text-danger fw-bold">*</span> :</label>
				    <input class="form-control mb-2" type="number"  name="servicerpostcode" id="servicerpostcode" value="<%=servicer.getServicerpostcode() %>" required>
				    
				    <label class="form-label" for="servicerstate">State <span class="text-danger fw-bold">*</span> : </label>
				    <select class="form-select mb-2" id="servicerstate" name = "servicerstate" required>
						<option <%= (servicer.getServicerstate().equals("")?"selected='selected'":"") %> value="" ></option>	
						<option <%= (servicer.getServicerstate().equals("JOHOR")?"selected='selected'":"") %> value="JOHOR">JOHOR</option>
						<option <%= (servicer.getServicerstate().equals("MELAKA")?"selected='selected'":"") %> value="MELAKA">MELAKA</option>
						<option <%= (servicer.getServicerstate().equals("KEDAH")?"selected='selected'":"") %> value="KEDAH">KEDAH</option>
						<option <%= (servicer.getServicerstate().equals("KELANTAN")?"selected='selected'":"") %> value="KELANTAN">KELANTAN</option>
						<option <%= (servicer.getServicerstate().equals("NEGERI SEMBILAN")?"selected='selected'":"") %> value="NEGERI SEMBILAN">NEGERI SEMBILAN</option>
						<option <%= (servicer.getServicerstate().equals("PAHANG")?"selected='selected'":"") %> value="PAHANG">PAHANG</option>
						<option <%= (servicer.getServicerstate().equals("PERAK")?"selected='selected'":"") %> value="PERAK">PERAK</option>
						<option <%= (servicer.getServicerstate().equals("PERLIS")?"selected='selected'":"") %> value="PERLIS">PERLIS</option>
						<option <%= (servicer.getServicerstate().equals("SELANGOR")?"selected='selected'":"") %> value="SELANGOR">SELANGOR</option>
						<option <%= (servicer.getServicerstate().equals("TERENGGANU")?"selected='selected'":"") %> value="TERENGGANU">TERENGGANU</option>
						<option <%= (servicer.getServicerstate().equals("PULAU PINANG")?"selected='selected'":"") %> value="PULAU PINANG">PULAU PINANG</option>
						<option <%= (servicer.getServicerstate().equals("SABAH")?"selected='selected'":"") %> value="SABAH">SABAH</option>
						<option <%= (servicer.getServicerstate().equals("SARAWAK")?"selected='selected'":"") %> value="SARAWAK">SARAWAK</option>
						<option <%= (servicer.getServicerstate().equals("KUALA LUMPUR")?"selected='selected'":"") %> value="KUALA LUMPUR">KUALA LUMPUR</option>
						<option <%= (servicer.getServicerstate().equals("PUTRAJAYA")?"selected='selected'":"") %> value="PUTRAJAYA">PUTRAJAYA</option>
					</select>
					<br>
					<div class="row">
						<div class="col"></div>
						<div class="col"></div>
						<div class="col input-group">
							<span class="input-group-text text-white bg-success bg-opacity-75 border border-success">
								<i class="fa fa-check"></i>
							</span>
							<input class="btn btn-success w-75" type="submit" value="Update">
						</div>
						<div class="col input-group">
							<span class="input-group-text text-black bg-warning bg-opacity-75 border border-warning">
								<i class="fa fa-refresh"></i>
							</span>
							<input class="btn btn-warning w-75" type="reset" value="Reset">
						</div>
					</div>
		  		</form>
			</div>
		</div>
		<div class="col input-group m-4">
			<span class="input-group-text text-white bg-primary bg-opacity-75 border border-primary">
				<i class="fa fa-arrow-left"></i>
			</span>
			<a href="ServicerView.jsp" class="btn btn-primary">Back</a> 
		</div>
	</body>
</html>