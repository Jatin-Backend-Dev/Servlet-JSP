<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
<link rel="stylesheet" type="text/css" href="welcomestyle.css">
</head>
<body>
	
	<%
	String user = (String)session.getAttribute("user");
	%>
	
	<!-- <h1>Welcome <%=user %></h1> -->

	<div class="welcome-section">
		<div class="top-section">
			<h1 class="rainbow">Welcome <%=user %></h1>
		</div>
	</div>
</body>
</html>