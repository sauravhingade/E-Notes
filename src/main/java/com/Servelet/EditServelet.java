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
 * Servlet implementation class EditServelet
 */
@WebServlet("/EditServelet")
public class EditServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	    
	    try {
	    	
	    	Integer note_id=Integer.parseInt(request.getParameter("note_id"));
			String title =request.getParameter("title");
			
		    String content =request.getParameter("content");
		    
		    postDAO post =new postDAO(DBConnection.getConn());
		    
		    boolean b=post.postupdate(note_id, title, content);
		    
		    if(b)
		    {
		    	HttpSession session =request.getSession();
		    	session.setAttribute("updtmsg", "Notes Updated Succesfully");
		    	response.sendRedirect("ShowNotes.jsp");
		    }
		    else {
		    	System.out.println("not updated");
		    	response.sendRedirect("ShowNotes.jsp");
		    }
	    	
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
	    
		
	
	}

}
