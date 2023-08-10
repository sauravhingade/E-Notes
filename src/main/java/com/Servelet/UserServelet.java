package com.Servelet;

import java.io.IOException;
import java.io.PrintWriter;

import org.apache.catalina.connector.Response;

import com.DB.DBConnection;
import com.DOA.UserDAO;
import com.User.User;

import jakarta.servlet.Registration;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/UserServelet")

public class UserServelet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("fname");
		String email=req.getParameter("femail");
		String password=req.getParameter("fpassword");
		User us=new User();
		us.setName(name);
		us.setEmail(email);
		us.setPassword(password);
		
	
	
	UserDAO dao=new UserDAO(DBConnection.getConn());
	boolean b=dao.addUser(us);
	
	HttpSession session =req.getSession();
	if(b)
	{
		
		session.setAttribute("reg-succ", "Registration Sucessfull");
		resp.sendRedirect("Register.jsp");
		
	}
	else {

		session.setAttribute("reg-fail", "Sometbhing Went Wrong");
		resp.sendRedirect("Register.jsp");
	}
	
	
	
	}
	
			
	
}
