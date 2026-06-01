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
					<input type="text" name="username" placeholder="Enter your Name" required>
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
					
					<select id = "city" name = "city" required>
						<option value = ""selected disabled>Select State</option>
						<option value="Andhra Pradesh">Andhra Pradesh</option>
						<option value="Arunachal Pradesh">Arunachal Pradesh</option>
						<option value="Assam">Assam</option>
						<option value="Bihar">Bihar</option>
						<option value="Chhattisgarh">Chhattisgarh</option>
						<option value="Goa">Goa</option>
						<option value="Gujarat">Gujarat</option>
						<option value="Haryana">Haryana</option>
						<option value="Himachal Pradesh">Himachal Pradesh</option>
						<option value="Jharkhand">Jharkhand</option>
						<option value="Karnataka">Karnataka</option>
						<option value="Kerala">Kerala</option>
						<option value="Madhya Pradesh">Madhya Pradesh</option>
						<option value="Maharashtra">Maharashtra</option>
						<option value="Manipur">Manipur</option>
						<option value="Meghalaya">Meghalaya</option>
						<option value="Mizoram">Mizoram</option>
						<option value="Nagaland">Nagaland</option>
						<option value="Odisha">Odisha</option>
						<option value="Punjab">Punjab</option>
						<option value="Rajasthan">Rajasthan</option>
						<option value="Sikkim">Sikkim</option>
						<option value="Tamil Nadu">Tamil Nadu</option>
						<option value="Telangana">Telangana</option>
						<option value="Tripura">Tripura</option>
						<option value="Uttar Pradesh">Uttar Pradesh</option>
						<option value="Uttarakhand">Uttarakhand</option>
						<option value="West Bengal">West Bengal</option>

					</select>
				</div>

				<div class="remember">
					<input type="checkbox" id="remember" required> <label for="remember">I
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