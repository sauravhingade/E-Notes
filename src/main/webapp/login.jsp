<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Login Page</title>
<%@ include file="all_component/allcss.jsp"%>

<style>
.cont .card {
	width: 30%;
	position: absolute;
	top: 20%;
	left: 35%;
}

.cont {
	width: 100%;
	height: 100vh;
	background-image: linear-gradient(to right top, #d16ba5, #c777b9, #ba83ca, #aa8fd8,
		#9a9ae1, #8aa7ec, #79b3f4, #69bff8, #52cffe, #41dfff, #46eefa, #5ffbf1
		);
	background-size: cover;
	background-position: center;
}

.cont .card .card-header {
	text-align: center;
}
</style>
</head>
<body>
	<%@ include file="all_component/navbar.jsp"%>
	<div class="cont">
		<div class="card">
			<div class="card-header" style="background: #8e24aa">
				<h2>
					<i class="fa-solid fa-user"></i>
				</h2>
				<h3>LOGIN FORM</h3>
			</div>

			<%
			String msg = (String) session.getAttribute("fail");
			if (msg != null) {
			%>
			<div class="alert alert-danger" role="alert">
				<%=msg%>
			</div>

			<%
			session.removeAttribute("fail");
			}
			%>

			<%
			String withoutlogin = (String) session.getAttribute("login-error");
			if (withoutlogin != null) {
			%>
			<div class="alert alert-danger" role="alert">
				<%=withoutlogin%>
			</div>
			<%
			session.removeAttribute("login-error");
			}
			%>
			
			<%
			String logoutmsg = (String)session.getAttribute("logoutmsg");
			if (logoutmsg!= null) {
			%>
			<div class="alert alert-danger" role="alert">
				<%=logoutmsg%>
			</div>
			<%
			session.removeAttribute("logoutmsg");
			}
			%>
			<div class="card-body">
				<form action="loginServele" method="post">

					<label>Enter Email</label>
					<div class="form-group">
						<input type="email" name="uemail" class="form-control"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							placeholder="Enter email"> <small id="emailHelp"
							class="form-text text-muted" required>We'll never share
							your email with anyone else.</small>
					</div>
					<label>Enter Password</label>
					<div class="form-group">
						<input type="password" name="upassword" class="form-control"
							id="exampleInputPassword1" placeholder="Password" required>
					</div>

					<button type="submit" class="btn btn-primary "
						style="display: block; width: 100%; border-radius: 13px">Login</button>
				</form>
			</div>
		</div>

	</div>

</body>
</html>