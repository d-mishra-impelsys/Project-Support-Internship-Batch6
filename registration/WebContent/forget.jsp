<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>forget password</title>
</head>
<body style="background-color: #33E3FF ">
<form action="loginregister">
<table
			style="background-color: pink; margin-left: 200px; margin-left: 200px;">
				<h1 style="color: black margin-left: 200px; margin-left: 200px;">ONINE MOBILE PURCHASE</h1>
			<tr>
				<td><h3 style="color: red;">Forget password?</h3></td>
			</tr>
<tr>
				<td>secret question :</td>
				<td><select name="secret question" id="secret_question0"
					align="center" enabled="enabled">
						<option value="0">Mother's maiden name.</option>
						<option value="1">Name of town where you were born.</option>
						<option value="2">Name of first pet.</option>
				</select></td>
			</tr>
			<br>
			<br>
			<tr>
				<td>secret answer :</td>
				<td><input type="text" name="text"  placeholder="Text here"></td>
			</tr>
			<br>
			<br>
			<td><input type="submit" name="submit" value="submit"></td>
</body>
</html>