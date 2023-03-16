<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success</title>
</head>
<body>
	<h1>I am the page after successful submission of data</h1>
	<h2>Name is ${student.name }</h2>
	<h2>DOB is ${student.date}</h2>
	<h2>Gender is ${student.gender }</h2>
	<h2>Id is ${student.id }</h2>
	<h2>Courses is ${student.courses}</h2>
	<hr>
	<h2>Address street is ${student.address.street}</h2>
	<h2>Address city is ${student.address.city}</h2>
</body>
</html>