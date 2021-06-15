
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

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
<title>HR-Manager App</title>
</head>
<body>
	<Header class="jumbotron text-center head-text container">
		
		<p>HR Manager System</p>
		<hr>
	</Header>
	<div class="jumbotron container">
		
		<div class="jumbotron text-center head-text">
			
			<p>Login</p> <hr>
		</div>
		<form action="login" method="post" id="user-info-form" data-toggle="validator">
			<div class="form-group row">
				<label for="username" class="col-md-2 col-sm-2 col-form-label">
					User Name: </label>
				<div class="col-md-9 col-sm-8">
					<input type="text" autofocus class="form-control" id="username"
						placeholder="Enter user name" name="username"
						data-error="Enter your user name." required /> <small> </small>
				</div>
			</div>
			<div class="form-group row">
				<label for="password" class="col-md-2 col-sm-2 col-form-label">
					Password: </label>
				<div class="col-md-9 col-sm-8">
					<input type="password" autofocus class="form-control" id="password"
						placeholder="Enter your password" name="password"
						data-error="Enter your password." required /> <small>
						<div class="help-block with-errors"></div>
					</small>
				</div>
			</div>
			<label class="col-md-2 col-sm-2 col-form-label"></label>
			<div class="col-md-9 col-sm-8">
				<p style="color: red">${wrong_id_pass}</p>
			</div>
			<div class="form-group row">
				<div class="col-md-8 col-sm-8 col-xs-8 col-offset-1 form-group">
					<button type="submit" class="btn btn-primary">Login</button>
				</div>
			</div>
		</form>
		<footer>
			<div class="container-fluid">
				<div class="text-center">
					<p>Copyright 2020-2021 by Fresher Training</p>
				</div>
			</div>
		</footer>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.min.js"></script>
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

