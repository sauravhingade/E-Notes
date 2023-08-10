<%@page import="com.DB.DBConnection"%>
<%@page import="com.DOA.postDAO"%>
<%@page import="com.User.post"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%
User us1 = (User)session.getAttribute("userD");


if (us1 == null) {
	response.sendRedirect("login.jsp");
	
	session.setAttribute("login-error", "Please Login First");
}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Here</title>
<%@ include file="all_component/allcss.jsp"%>
</head>
<body>

<%
  Integer note_id = Integer.parseInt(request.getParameter("note_id"));
 
   postDAO post=new postDAO(DBConnection.getConn());
   post p= post.getdatabyid(note_id);
%>
<%@ include file="all_component/navbar.jsp"%>

	<h1 class="text-center">Edit Your Notes</h1>

	<div class="container" style="margin: auto">
		<div class="row">
			<div class="col-md-12">


				<form action="EditServelet" method="post">
				   
				   <input type="hidden" value="<%=note_id %>" name="note_id">
					<div class="form-group">

						


						<label for="exampleInputEmail1"><b>Enter Title</b></label> <input
							type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" style="width: 90%" name="title" value="<%=p.getTitle() %>" >

					</div>
					<div class="form-group" style="width: 90%">
						<label for="exampleInputEmail1"><b>Enter Content</b></label>
						<textarea rows="8" cols="" class="form-control" name="content"  ><%=p.getContent() %></textarea>
					</div>
					<div class="container text-center">
						<button type="submit" class="btn btn-primary">Save Notes</button>
					</div>

				</form>

			</div>
		</div>
	</div>




</body>
</html>