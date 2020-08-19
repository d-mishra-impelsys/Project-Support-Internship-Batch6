<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>main page</title>
</head>
<body style="background-color:#DAF7A6">
<form action="main">
<div align="center">
<h1 style="color: black margin-left: 100px; margin-left: 100px;">ONINE MOBILE PURCHASE</h1>
<tr>
				<td><a href="home.jsp" style="margin-right: 60px">Home</a></td>				
				<td><select name="filter" id="filter"
					 enabled="enabled" placeholder="filters" style="margin-right: 60px">
						<option value="0">Brand</option>
						<option value="1">Price</option>
						<option value="2">RAM</option>
                        <option value="3">ROM</option>
                        <option value="4">RAM</option>
                        <option value="5">Battery</option>
				</select></td>
				<td><input type="text" name="search" placeholder="Search here"  style="margin-right: 60px"></td>
				<td><a href="cart.jsp"  style="margin-right: 60px">Cart</a></td>
				<td><a href="login.jsp"  style="margin-right: 60px">login</a></td>
				<td><a href="register.jsp"  style="margin-right: 60px">signup</a></td>
			</tr>
			
			</form>
</body>
</html>