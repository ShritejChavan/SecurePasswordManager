package Validate;

import java.beans.Statement;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class RegisterUser extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");	
		String email = request.getParameter("email");	
		String password = request.getParameter("password");
		
		Connection con = Helper.getConnection();
		
		
		try {
			
			PreparedStatement check = con.prepareStatement("select * from users where email=?");
			check.setString(1, email);
			ResultSet res = check.executeQuery();
			
			while(res.next()) {
				if(res.getString(2).equals(email)) {
					request.getRequestDispatcher("register.jsp").forward(request, response);
				}
			}
			
			PreparedStatement pd = con.prepareStatement("insert into users values(?, ?, ?)");
			pd.setString(1, username);
			pd.setString(2, email);
			pd.setString(3, password);
			
			pd.execute();
			
			String securekey = KeyGenerator.generateKey();
			
			PreparedStatement kd = con.prepareStatement("insert into key values(?, ?)");
			kd.setString(1, email);
			kd.setString(2, KeyGenerator.generateKey());
			
			kd.execute();
			
			HttpSession session = request.getSession();
			session.setAttribute("email", email);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
