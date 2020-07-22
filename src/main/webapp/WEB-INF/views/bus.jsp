<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>Bus description</h1>
<form action="addbus">
<table border="1px" cellpadding="10px" cellspacing="10px">
<tr><td>Id:</td><td><input type="text" name="id"></td></tr>
<tr><td>Name:</td><td><input type="text" name="name"></td></tr>
<tr><td>date:</td><td><input type="text" name="date"></td></tr>
<tr><td>placefrom:</td><td><input type="text" name="placefrom"></td></tr>
<tr><td>placeto:</td><td><input type="text" name="placeto"></td></tr>
<tr><td colspan="2" align="center"><input type="submit" value="submit"></td></tr>
</table>
</form>
</center>
</body>
</html>