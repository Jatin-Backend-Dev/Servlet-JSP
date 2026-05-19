<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register here</title>
    <link rel="stylesheet" href="register_style.css">

</head>
<body>

	<form method="post" action="register">
		<div class="register-box">
			<div class="top-section">
				<h1>Registration</h1>
			</div>
			<div class="form-section">
				<div class="input-box">
					<input type="text" name="username" placeholder="Enter your Name">
				</div>
				<div class="input-box">
					<input type="email" name="email" placeholder="Enter your Email">
				</div>
				<div class="input-box">
					<input type="password" placeholder="Create Password" required>
				</div>
				<div class="input-box">
					<input type="password" name="password" placeholder="Confirm your Password" required>
				</div>
				
				<div class="input-box">
					<input type="text" name="city" placeholder="City" required>
				</div>

				<div class="remember">
					<input type="checkbox" id="remember"> <label for="remember">I
						accept the terms and conditions</label>
				</div>



				<button class="register-btn">Register</button>

				<p class="signin-text">
					Already have an account? <a href="login.jsp">Login here</a>
				</p>

			</div>

			<%
			String success = (String) request.getAttribute("success");
			if (success != null) {
			%>
			<p style="color: green; text-align:center; margin-bottom:10px;">
				<%=success%>
			</p>
			<%} %>


		</div>
	</form>
	
	
    
</body>
</html>