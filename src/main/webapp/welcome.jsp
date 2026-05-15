<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IWelcome Page</title>
</head>
<body>
	
	<%
	String user = (String)session.getAttribute("user");
	%>
	
	<h1>Welcome <%=user %></h1>
</body>
</html>