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


@WebServlet("/update")
public class UpdatePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UpdatePassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		String username = (String)session.getAttribute("username");
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("update user set Password = ? where Name = ?");
			ps.setString(1, password);
			ps.setString(2, username);
			int i = ps.executeUpdate();
			
			if(i > 0) {
				request.setAttribute("update", "password updated successfuly");
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				rd.forward(request, response);
			}
			else {
				request.setAttribute("error", "Error updating the password...");
				RequestDispatcher rd1 = request.getRequestDispatcher("updatepassword.jsp");
				rd1.forward(request, response);
			}
			
		}
		catch(Exception e) {
			response.getWriter().println(e);
		}
	}

}
