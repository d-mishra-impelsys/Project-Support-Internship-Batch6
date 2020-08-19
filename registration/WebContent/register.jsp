<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>registration form</title>
</head>
<body style="background-color: #33FFE3">
	<div align="center">
		<h1 style="color: black margin-left: 100px; margin-left: 100px;">ONINE
			MOBILE PURCHASE</h1>
		<div
			style="position: absolute; top: 37%; left: 30%; border: 1px solid; background-color: pink;">
			<form action="Register" method="get">

				<tr>
					<td><h3 style="color: red;">Registration page!!!</h3></td>
				</tr>
				<tr>
					<td>user-id :</td>
					<td><input type="text" name="username" placeholder="user-id"></td>
				</tr>
				<br> <br>
				<tr>
					<td>name :</td>
					<td><input type="text" name="name" placeholder="name"></td>
				</tr>
				<br> <br>
				<tr>
					<td>Gender :</td>
					<td>male<input type="radio" name="gender" value="male">
						female<input type="radio" name="gender" value="female"></td>
				</tr>
				<br> <br>
				<tr>
					<td>password :</td>
					<td><input type="password" name="password1"
						placeholder="password"></td>
				</tr>
				<br> <br>
				<tr>
					<td>confirm password :</td>
					<td><input type="password" name="password2"
						placeholder="password"></td>
				</tr>
				<br> <br>
				<tr>
					<td>Email-Id :</td>
					<td><input type="text" name="email" placeholder="email-id"></td>
				</tr>
				<br> <br>
				<tr>
					<td>phone number :</td>
					<td><input type="tel" name="phonenumber"
						placeholder="phone number"></td>
				</tr>
				<br> <br>
				<tr>
					<td>secret question :</td>
					<td><select name="secretquestion" id="secret_question0"
						enabled="enabled">
							<option value="0">Mother's maiden name.</option>
							<option value="1">Name of town where you were born.</option>
							<option value="2">Name of first pet.</option>
					</select></td>
				</tr>
				<br> <br>
				<tr>
					<td>secret answer :</td>
					<td><input type="text" name="secretanswer" placeholder="Text here"></td>
				</tr>
				<br> <br>
				<tr>
					<td>address :</td>
					<td><input type="text" name="address" placeholder="Text here"></td>
				</tr>
				<br> <br>
				<tr>
					<td><input type="submit" name="submit" value="signup"></td>
					<td></td>
				</tr>
			</form>
</body>
</html>