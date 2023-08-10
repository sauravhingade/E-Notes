package com.Servelet;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import javax.sound.midi.Soundbank;

import com.DB.DBConnection;
import com.DOA.UserDAO;
import com.DOA.postDAO;
import com.User.post;

/**
 * Servlet implementation class AddNotesServelet
 */
@WebServlet("/AddNotesServelet")
public class AddNotesServelet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int uid=Integer.parseInt(request.getParameter("uid"));
		String title =request.getParameter("title");
		String content =request.getParameter("content");
		
		postDAO p=new postDAO(DBConnection.getConn());
		boolean f=p.addNotes(title, content, uid);
		
		
		
		if(f)
		{
			response.sendRedirect("ShowNotes.jsp");
		}
		else {

			
		}
		
		
		
		
		
		
		
	}

}
