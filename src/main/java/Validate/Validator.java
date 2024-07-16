package Validate;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.beans.Statement;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Validator extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("password");
		RequestDispatcher rd = null;
		Connection con = null;
		
		try {
			con = Helper.getConnection();

			java.sql.Statement st = con.createStatement();
			
			ResultSet rs = st.executeQuery("select * from users");
			
			while(rs.next()) {
				String n = rs.getString(1);
				String e = rs.getString(2);
				String p = rs.getString(3);
				
				System.out.println(n);
				System.out.println(e);
				System.out.println(p);
				
				if(email.equals(e) && password.equals(p)) {
					HttpSession session = request.getSession();
								
					session.setAttribute("email", email);
					
					rd = request.getRequestDispatcher("index.jsp");
					rd.forward(request, response);
				}
				
			}
			rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}  catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		
	}

}
