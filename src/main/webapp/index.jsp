<%@page import="com.DB.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>

 <script src="https://kit.fontawesome.com/58b8320b36.js" crossorigin ="anonymous" ></script>
 <%@ include file="all_component/allcss.jsp" %>

 <style>
 

.cont{
  
    width:100%;
    height:80vh;
    background-image:url("image/bg.jpg");
    background-size: cover;
    background-position: center;
     text-align:center
 }
 .cont .text{
 padding-top:35px;
 }
 
 .cont .text .buttons{
 padding-top:15px;
 }
 .cont .text h1{
 color:white;

 }
 


 </style>
</head>
<body>
<%@ include file="all_component/navbar.jsp" %>
 

<div class="cont" >
   <div class="back-img">
     <div class="text">
        <h1><i class="fa-solid fa-book"></i> Enotes-Save Your Notes</h1>
        <div class="buttons">
        <a href= "login.jsp"  class="btn btn-light my-2 my-sm-0" type="submit"><i class="fa-solid fa-user"></i> Login</a>
        <a href= "Register.jsp"  class="btn btn-light my-2 my-sm-0" type="submit"><i class="fa-solid fa-user-plus"></i> Register</a>
        </div>
     </div>
   </div>
</div>   
     

<%@ include file="all_component/footer.jsp" %>

</body>
</html>