package com.app;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;


@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password =request.getParameter("password");
		String city = request.getParameter("city");
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into user(Name, Email, Password, City) values(?,?,?,?)");
			ps.setString(1,username);
			ps.setString(2, email);
			ps.setString(3,password);
			ps.setString(4, city);
			int i = ps.executeUpdate();
			if(i > 0) {
				request.setAttribute("success", "Registration successful");
				RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
				rd.forward(request, response);
				//response.sendRedirect("login.jsp");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			response.getWriter().println(e);
		}
		
	}

}
