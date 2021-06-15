<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Hind&display=swap"
	rel="stylesheet">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<!-- css link -->
<link rel="stylesheet" href="resources/style.css">
<!-- title -->
<title>HR-ManagerApp</title>
</head>
<body>
	<!-- Head part starts -->
	<header class="container">
		<form action="logout">
			<div class="col-sm-12">
			<label class="welcome lead"><strong>WELCOME ${username.toUpperCase()}!</strong></label>
				<button type="submit" value="Logout" class="btn btn-sm login btn-dark">Logout</button>
			</div>
		</form>
		<h1 class="center">HR-Manager-System</h1>
	</header>
	<!-- Head part ends -->
	
	<!-- Section starts here -->
	<section>
	<%
	//to avoid go back while logout cache problem
	response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");//HTTP 1.1

	if(session.getAttribute("username")==null)
	response.sendRedirect("index.jsp");
	
	%>
		<div class="jumbotron container">
			<h3 class="lead"><strong>EMPLOYEES LISTINGS</strong></h3>
			<form method="get" action="<%=request.getContextPath()%>/DownloadFile">
            <button class="btn btn-info btn-lg">Download Employee Details</button>
            </form>
            
			<input type="button" class="addBtn lead mb-3" value="Upload Customer Detail"
			 onclick="window.location.href='showFormForAdd'; return false;"
			/>
			<table class="table table-striped">
				<thead class="thead-dark">
					<tr>
						<th scope="col">Employee Code</th>
						<th scope="col">Employee Name</th>
						<th scope="col">Location</th>
						<th scope="col">Email</th>
						<th scope="col">Date Of Birth</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach items="${employees}" var="employees"> 
				      			     			
					<tr>
						<th scope="row">${employees.employeeCode}</th>
						<td>${employees.employeeName}</td>
						<td>${employees.location}</td>
						<td>${employees.email}</td>
						<td>${employees.dateOfBirth}</td>
						<td>
							<button type="button" class="btn btn-secondary btn-sm"
								data-toggle="modal" data-target="#myModal"
								onclick="fill(${employees.employeeCode},'${employees.employeeName}',
								'${employees.location}','${employees.email}','${employees.dateOfBirth}');">EDIT</button>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h3 class="modal-title lead">Welcome</h3>
				</div>
				<div class="modal-body">
					<form modelAttribute="Employee"
						action="<%=request.getContextPath()%>/editEmployee" method="post">
						<div class="form-group row">
							<label class="col-md-4 col-sm-4 col-form-label">Employee
								Code: </label> <input class=" col-md-7 col-sm-7" id="employeeCode"
								name="employeeCode" type="text" required readonly>
						</div>
						<div class="form-group row">
							<label class="col-md-4 col-sm-4 col-form-label">Employee
								Name: </label> <input class=" col-md-7 col-sm-7" id="employeeName"
								name="employeeName" type="text" required>
						</div>
						<div class="form-group row">
							<label class="col-md-4 col-sm-4 col-form-label">Location:
							</label> <input class=" col-md-7 col-sm-7 " id="employeeLocation"
								name="location" type="text" required>
						</div>
						<div class="form-group row">
							<label class="col-md-4 col-sm-4 col-form-label">Email: </label> <input
								class=" col-md-7 col-sm-7 " id="employeeEmail" type="text"
								name="email" required>
						</div>
						<div class="form-group row">
							<label class="col-md-4 col-sm-4 col-form-label">Date of
								Birth: </label> <input class=" col-md-7 col-sm-7 " name="dateOfBirth"
								id="employeeBirthDate" type="text" required>
						</div>
						<div class="modal-footer justify-content-center">
							<button type="submit" class="btn btn-secondary">Save</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	</section>
	<!-- Section ends here -->

	<!-- Footer starts here -->
	<footer class="center ">
		<h4 class="lead">Copyright 2020_2021 By Fresher Training</h4>
	</footer>
	<!-- footer ends here -->

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script src="resources/script.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>

</body>
</html>