<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css">
    <link rel="stylesheet" href="login_style.css">
</head>
<body>

	<form method="post" action="login">

		<div class="login-box">
			<div class="top-section">
				<h1>Login Form</h1>
			</div>
			<div class="form-section">
				<div class="input-form">
					<span class="icon"> <i class="fa-solid fa-user"></i>

					</span> <input type="text" name="username" placeholder="Email or Username" required>

				</div>
				<div class="input-form">
					<span class="icon"> <i class="fa-solid fa-lock"></i>

					</span> <input type="password" name="password" placeholder="Password" required>
				</div>
				<a href="forgotpassword.jsp" class="forgot-password">Forgot Password?</a>
				<button class="login-btn">Login</button>
				<p class="signup-text">
					Don't have an account? <a href="register.jsp">Sign Up</a>
				</p>
			</div>

			<%
			String error = (String) request.getAttribute("error");
			if (error != null) {
			%>
			<p style="color: red; text-align:center; margin-bottom:10px;">
				<%=error%>
			</p>
			<%} %>

		</div>

	</form>
	
	
</body>
</html>