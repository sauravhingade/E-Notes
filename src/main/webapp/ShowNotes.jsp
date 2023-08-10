<%@page import="com.User.post"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnection"%>
<%@page import="com.DOA.postDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
User us3 = (User) session.getAttribute("userD");

if (us3 == null) {
	response.sendRedirect("login.jsp");

	session.setAttribute("login-error", "Please Login First");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Notes</title>
<%@ include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@ include file="all_component/navbar.jsp"%>
	
	
	<%
	String msg=(String)session.getAttribute("updtmsg");
	if(msg!=null)
	{
	
	%><div class="alert alert-success" role="alert">
				<%=msg%>
			</div>
			<%
			session.removeAttribute("updtmsg");
			}
			%>
			
			
				
	<%
	String msg2=(String)session.getAttribute("deletmsg");
	if(msg2!=null)
	{
	
	%><div class="alert alert-success" role="alert">
				<%=msg2%>
			</div>
			<%
			session.removeAttribute("deletmsg");
			}
			%>
			
			
	

	<div class="container">
		<h2 class="text-center">All Notes</h2>
		<div class="row">
			<div class="col-md-12">


				<%
				if (us3 != null) {
					postDAO ob = new postDAO(DBConnection.getConn());
					List<post> pos = ob.getdata(us3.getId());
					for (post po : pos) {
				%>
				            <div class="card mt-3">

					<img src="image/home.jpg" class="card-img-top mt-2 mx-auto"
						style="max-width: 100px">
					<div class="card-body p-4">


						<h5 class="card-title "><%=po.getTitle() %></h5>
						<p><%=po.getContent() %></p>


						<p>
							<b class="text-success">Published By: <%=us3.getName() %> </b></br> <b
								class="text-primary"></b>
						</p>

						<p>
							<b class="text-success">Published Date:<%=po.getpDate() %> </b></br> <b
								class="text-primary"></b>
						</p>

						<div class="container text-center mt-2">
							<a href="DeleteServelet?note_id=<%=po.getId() %>" class="btn btn-danger">Delete</a>
							<a href="edit.jsp?note_id=<%=po.getId() %>" class="btn btn-primary">Edit</a>

						</div>
					</div>
				</div>



				<%
				}
				}
				%>

			</div>
		</div>
	</div>



</body>
</html>