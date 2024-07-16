package Operations;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.beans.Statement;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Validate.Helper;


public class AddPasswordToDb extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String url = request.getParameter("url");
		String password = request.getParameter("password");

	
		Connection con = null;
		
		con = Helper.getConnection();
		
		String key = "";
		
		try {
			java.sql.Statement st = con.createStatement();
			ResultSet res = st.executeQuery("select * from key");
			
			while(res.next()) {
				if(res.getString(1).equals(email)) {
					key = res.getString(2);
					break;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		password = Operations.Encrypter.encrypt(password, key);
		
		try {
			PreparedStatement pd = con.prepareStatement("insert into passwords values(?, ?, ?)");
			pd.setString(1, email);
			pd.setString(2, url);
			pd.setString(3, password);
			
			pd.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		request.getRequestDispatcher("password_manager.jsp").forward(request, response);
	}

}
