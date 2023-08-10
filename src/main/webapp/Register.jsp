<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Register Page</title>
 <%@ include file="all_component/allcss.jsp" %>

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
					<i class="fa-solid fa-user-plus"></i>
				</h2>
				<h3>REGISTRATION FORM</h3>
			</div>

			<%
			String msg = (String) session.getAttribute("reg-succ");

			if (msg != null) {
			%>
			<div class="alert alert-success" role="alert">
				<%=msg%>
				,Go to Login - <a href="login.jsp">click here</a>
			</div>

			<%
			session.removeAttribute("reg-succ");
			}
			%>

			<%
			String msg2 = (String) session.getAttribute("reg-fail");

			if (msg2 != null) {
			%>

			<div class="alert alert-danger" role="alert">
				<%=msg2%>
			</div>

			<%
			session.removeAttribute("reg-fail");
			}
			%>


			<div class="card-body">
				<form action="UserServelet" method="post">
					<label>Enter full Name</label>
					<div class="form-group">
						<input type="text" name="fname" class="form-control"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							placeholder="Enter Name"> <small id="emailHelp"
							class="form-text text-muted" required>We'll never share your email
							with anyone else.</small>
					</div>
					<label>Enter Email</label>
					<div class="form-group">
						<input type="email" name="femail" class="form-control"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							placeholder="Enter email"> <small id="emailHelp"
							class="form-text text-muted" required>We'll never share your email
							with anyone else.</small>
					</div>
					<label>Enter Password</label>
					<div class="form-group">
						<input type="password" class="form-control"
							id="exampleInputPassword1" placeholder="Password"
							name="fpassword" required>
					</div>

					<button type="submit" class="btn btn-primary "
						style="display: block; width: 100%; border-radius: 13px">Submit</button>
				</form>
			</div>
		</div>

	</div>

</body>
</html>