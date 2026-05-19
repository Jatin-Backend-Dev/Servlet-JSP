<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css">
    <link rel="stylesheet" href="update_style.css">
</head>
<body>
	<form method="post" action="update">

		<div class="login-box">
			<div class="top-section">
				<h1>Update Password</h1>
			</div>
			<div class="form-section">
				
				<div class="input-form">
					<span class="icon"> <i class="fa-solid fa-lock"></i>

					</span> <input type="password" name="password" placeholder="Password" required>
				</div>
				
				<div class="input-form">
					<span class="icon"> <i class="fa-solid fa-lock"></i>

					</span> <input type="password" name="password" placeholder="Confirm Password" required>
				</div>
				
				<button class="login-btn">Reset</button>
				
			</div>

			<%
			String update = (String) request.getAttribute("update");
			if (update != null) {
			%>
			<p style="color: green; text-align:center; margin-bottom:10px;">
				<%=update%>
			</p>
			<%} %>

		</div>
		</form>
</body>
</html>