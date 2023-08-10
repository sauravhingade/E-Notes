package com.Servelet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.DB.DBConnection;
import com.DOA.postDAO;

/**
 * Servlet implementation class DeleteServelet
 */
@WebServlet("/DeleteServelet")
public class DeleteServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer noteid=Integer.parseInt(request.getParameter("note_id"));
		postDAO dao=new postDAO(DBConnection.getConn());
		
		boolean f=dao.deletenotes(noteid);
		HttpSession session=null;
		if(f)
		{
			session =request.getSession();
			session.setAttribute("deletmsg", "Data Deleted Successfully");
			response.sendRedirect("ShowNotes.jsp");
		}
		
		else {
			session =request.getSession();
			session.setAttribute("errormsg", "something went wrong..");
			response.sendRedirect("ShowNotes.jsp");
		}
		
	


	}

}
