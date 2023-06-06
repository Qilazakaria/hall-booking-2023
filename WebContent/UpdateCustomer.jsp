<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"  
   uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="customernavigation.css" rel="stylesheet" type="text/css">
<link href="Assets.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="https://gc.kis.v2.scr.kaspersky-labs.com/FD126C42-EBFA-4E12-B309-BB3FDD723AC1/main.js?attr=Pi7kJWWD9rigL-MFJ0HoJU6xYNJwSSKTQ0v5nLA_Nq7thFt9fWMHhMzFn4FnokZZkjzbttFKhbfkapeoA4BVI5tZ81L8Psq2IhS2gpcytw0" charset="UTF-8"></script><script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<title>Update Customer</title>
</head>
<body>

<div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
                       <h2>Update Customer</h2>
        </div>
</div>
		</div>
		</div>
		</div>
		</div>
<table class="table table-striped table-hover">
<center>
<div class="form">
 <form action="UpdateCustomerController" method="POST"> 
        
        			<input type="hidden" id="custid" name="custid" value="<c:out value="${customer.custid}"/>" ><br>
        			
     				 Name: 
					<input type="text" id="custname" name="custname" value="<c:out value="${customer.custname}"/>"disabled><br>

					IC Number: 
					<input type="text" id="custidentificationcard" name="custidentificationcard" value="<c:out value="${customer.custidentificationcard}"/>"disabled><br>

					Phone Number: 
					<input type="text" id="custtelnum" name="custtelnum" value="<c:out value="${customer.custtelnum}"/>"><br>

					Home Number: 
					<input type="number" id="custhomeno" name="custhomeno" value="<c:out value="${customer.custhomeno}"/>"><br>

					Address: 
					<input type="text" id="custaddress" name="custaddress" value="<c:out value="${customer.custaddress}"/>"><br>

					City: 
					<input type="text" id="custcity" name="custcity" value="<c:out value="${customer.custcity}"/>"><br><br>
					
					Postcode: 
					<input type="number" id="custpostcode" name="custpostcode" value="<c:out value="${customer.custpostcode}"/>"><br>

					State: 
					<input type="text" id="custstate" name="custstate" value="<c:out value="${customer.custstate}"/>"><br>
					<label for="custstate">State</label>
    				

					Email: 
					<input type="text" id="custemail" name="custemail" value="<c:out value="${customer.custemail}"/>"><br>

					Password: 
					<input type="text" id="custpass" name="custpass" value="<c:out value="${customer.custpass}"/>"><br>

       
        <input type="submit" value="Submit">
        
  </form>
  </table>
  </center>
  </div>

</body>
</html>