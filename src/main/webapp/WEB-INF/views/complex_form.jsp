<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>Complex Form</title>
</head>
<body>

	<div class="display-5 fw-bolder fst-italic text-center mt-3">Complex form</div>
	<div class="container mt-5 shadow-lg col-4 pb-3 pt-3">

		<form class="row g-3" action="handleform" method="post">
			<div class="col-md-6">
				<label for="yourName" class="form-label">Your name</label> <input
					type="text" class="form-control" id="yourName" name="name"
					placeholder="Enter your name here....">
			</div>
			<div class="col-md-6">
				<label for="yourId" class="form-label">Your id</label> <input
					type="number" class="form-control" id="yourId" name="id"
					placeholder="Unique id....">
			</div>
			<div class="col-12">
				<label for="DOB" class="form-label">Your DOB</label> <input
					type="text" class="form-control" id="DOB" name="date"
					placeholder="dd/MM/yyyy">
			</div>
			<div class="col-12">
				<label for="inputAddress2" class="form-label">Select courses</label>
				<select class="form-select" multiple name="courses"
					aria-label="multiple select example">
					<option>Java</option>
					<option>C#</option>
					<option>C++</option>
					<option>.Net Framework</option>
					<option>Spring Framework</option>
				</select>
			</div>
			<div class="col-md-6">
				<label for="inputCity" class="form-label">Select Gender</label>
				<div class="form-check">
					<input class="form-check-input" type="radio" value="female"
						name="gender" id="flexRadioDefault1"> <label
						class="form-check-label" for="flexRadioDefault1"> Female</label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" value="male"
						name="gender" id="flexRadioDefault2" checked> <label
						class="form-check-label" for="flexRadioDefault2"> Male</label>
				</div>
			</div>
			<div class="col-md-3">
				<label for="city" class="form-label">City</label> <input type="text"
					class="form-control" id="city" name="address.city">
			</div>
			<div class="col-md-3">
				<label for="street" class="form-label">Street</label> <input
					type="text" class="form-control" id="street" name="address.street">
			</div>

			<div class="col-12">
				<button type="submit" class="btn btn-secondary">Save</button>
			</div>
		</form>
	</div>

	<div class="mt-5">
		<div class="alert alert-danger" role="alert">
		<form:errors path="student.*" ></form:errors>
		</div>
	</div>

	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>
</html>