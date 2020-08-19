<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login form</title>
</head>
<body style="background-color:hsla(0,100%,50%,0.5);">
	<form action="login" method="post">
		<table
			style="background-color: skyblue; margin-left: 200px; margin-left: 200px;">
			<h1 style="color: black margin-left: 200px; margin-left: 200px;">ONINE MOBILE PURCHASE</h1>
			<tr>
			<td><h3 style="color: red;">login page!!!</h3></td>
			</tr>
			<tr>
				<td>User-id :</td>
				<td><input type="text" name="username" placeholder="user-id"></td>
			</tr>
			<br>
			<br>
			<tr>
				<td>password :</td>
				<td><input type="password" name="password" placeholder="password"></td>
			</tr>
			<br>
			<br>
			<tr>
				<td><input type="submit" name="submit" value="login"></td>
				<td><a href="register.jsp">create account</a></td>
				<td><a href="forget.jsp">forget password?</a></td>
			</tr>
			</form>
</body>
</html>