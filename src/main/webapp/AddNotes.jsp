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
<title>Add Notes</title>
<%@ include file="all_component/allcss.jsp"%>


</head>
<body>
	<%@ include file="all_component/navbar.jsp"%>

	<h1 class="text-center">Add Your Notes</h1>

	<div class="container" style="margin: auto">
		<div class="row">
			<div class="col-md-12">


				<form action="AddNotesServelet" method="post">
					<div class="form-group">

						<%
						User use = (User) session.getAttribute("userD");

						if (use != null) {
						%>
						<input type="text" value=<%=use.getId()%> name="uid">
						<%
						}
						%>


						<label for="exampleInputEmail1"><b>Enter Title</b></label> <input
							type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" style="width: 90%" name="title">

					</div>
					<div class="form-group" style="width: 90%">
						<label for="exampleInputEmail1"><b>Enter Content</b></label>
						<textarea rows="8" cols="" class="form-control" name="content"></textarea>
					</div>
					<div class="container text-center">
						<button type="submit" class="btn btn-primary">Add Notes</button>
					</div>

				</form>

			</div>
		</div>
	</div>



</body>
</html>