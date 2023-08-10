package com.Servelet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class LogoutServelet
 */
@WebServlet("/LogoutServelet")
public class LogoutServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		try {
			HttpSession session=request.getSession();
			
			session.removeAttribute("userD");
			
			HttpSession session2 =request.getSession();
			session2.setAttribute("logoutmsg", "Logout Succesfully..");
			response.sendRedirect("login.jsp");
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	

}
