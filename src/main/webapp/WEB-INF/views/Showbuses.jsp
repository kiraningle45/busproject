<%@ page language="java" contentType="text/html;charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="2">
<c:forEach var="p" items="${plist}">
<tr>
<td>${p.name}</td>
<td>${p.date}</td>
<td>${p.placefrom}</td>
<td>${p.placeto}</td>
</tr>
</c:forEach>
</table>
</body>
</html>