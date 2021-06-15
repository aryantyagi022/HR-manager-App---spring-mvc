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
		<h1 class="center">HR-Manager-System</h1>
	</header>
	<!-- Head part ends -->

	<!-- Section starts here -->
	<section>
		<div class="jumbotron container">
			<h3 class="lead">SAVE EMPLOYEE</h3>
			<hr>
			<form action="<%=request.getContextPath()%>/saveCustomer"
			     modelAttribute="Employee" method="post">
				<input type="text" name="employeeCode" placeholder="Employee Code"
				class="form-control mb-4 col-4" required>
				<input type="text" name="employeeName" placeholder="Employee Name"
				class="form-control mb-4 col-4" required>
				<input type="text" name="location" placeholder="Location "
				class="form-control mb-4 col-4" required>
				<input type="text" name="email" placeholder="Email "
				class="form-control mb-4 col-4" required>
				<input type="text" name="dateOfBirth" placeholder="Date Of Birth(DD-MM-YYYY) "
				class="form-control mb-4 col-4" required>
				<button type="submit" class="btn btn-secondary col-2">Save</button>
			</form>
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