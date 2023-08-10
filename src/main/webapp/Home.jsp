<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%
User us2 = (User)session.getAttribute("userD");


if (us2 == null) {
	response.sendRedirect("login.jsp");
	
	session.setAttribute("login-error", "Please Login First");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <%@ include file="all_component/allcss.jsp" %>

<style>
  .card-body{
  text-align:center;
  }
   
 </style>
<title>HOME</title>
</head>
<body>
<%@ include file="all_component/navbar.jsp"%>
 <div class="cont">
    <div class="card">
     <div class="card-body">
        <img src="image/home.jpg" style="width:70vh">
        <h1>START TAKING NOTES</h1>
        <a href="AddNotes.jsp" class="btn btn-outline-primary">Start Here</a>
     </div>
    </div>
  
   </div>
 
</body>
</html>