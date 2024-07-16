package Operations;
import java.beans.Statement;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Password_Manager_Context extends HttpServlet {
	
	public void service(HttpServletRequest request, HttpServletResponse respone) throws ServletException, IOException {
		Connection con = null;
		ArrayList<User> list = new ArrayList<>();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");  
			con=DriverManager.getConnection(  
					"jdbc:oracle:thin:@localhost:1521:xe","system","root");  
			java.sql.Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from passwords");
			while(rs.next()) {
				list.add(new User(rs.getString(1), rs.getString(2), rs.getString(3)));
			}
			request.getSession().setAttribute("users", list);
			request.getRequestDispatcher("password_manager.jsp").forward(request, respone);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
