package com.app;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


@WebServlet("/forgot")
public class ForgotServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ForgotServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM user where Email = ? and Name = ?");
			ps.setString(1, email);
			ps.setString(2, username);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				//response.sendRedirect("updatepassword.jsp");
				HttpSession session = request.getSession();
				session.setAttribute("username", username);
				RequestDispatcher rd = request.getRequestDispatcher("updatepassword.jsp");
				rd.forward(request, response);
			}
			else {
				request.setAttribute("error", "Not found in database! OR Please check username or password");
				//response.sendRedirect("forgotpassword.jsp");
				RequestDispatcher rd = request.getRequestDispatcher("forgotpassword.jsp");
				rd.forward(request, response);
			}
		}
		catch(Exception e) {
			response.getWriter().println(e);
		}
	}

}
