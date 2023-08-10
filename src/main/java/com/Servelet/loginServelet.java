package com.Servelet;

import java.io.IOException;

import com.DB.DBConnection;
import com.DOA.UserDAO;
import com.User.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/loginServele")

public class loginServelet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("uemail");
		
		String password=req.getParameter("upassword");
		User us=new User();
		
		us.setEmail(email);
		us.setPassword(password);
		
		UserDAO dao=new UserDAO(DBConnection.getConn());
		User user= dao.loginUser(us);
		
		if(user!=null) {
			HttpSession session =req.getSession();
			session.setAttribute("userD", user);
			resp.sendRedirect("Home.jsp");
		}
		else 
		{
			HttpSession session =req.getSession();
			session.setAttribute("fail","Wrong email or Password");
			resp.sendRedirect("login.jsp");
		}
		
		
				
	}
	

}
