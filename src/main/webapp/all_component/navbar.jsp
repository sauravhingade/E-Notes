<%@page import="com.User.User"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom nav-custom">
	<a class="navbar-brand" href="#">ENotes</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="Home.jsp"><i
					class="fa-solid fa-house"></i>Home <span class="sr-only">(current)</span></a>
			</li>
			<li class="nav-item active"><a class="nav-link" href="AddNotes.jsp" ><i
					class="fa-solid fa-circle-plus"></i>AddNotes</a></li>
			<li class="nav-item active"><a class="nav-link" href="ShowNotes.jsp"><i
					class="fa-solid fa-address-book"></i>ShowNotes</a></li>



		</ul>

         <%
           User us=new User();
           us=(User)session.getAttribute("userD"); %>
         
         <% 
          if(us!=null){%>
         <a href="" class="btn btn-light my-2 my-sm-0" data-toggle="modal" data-target="#exampleModal" type="submit"><i
			class="fa-solid fa-user"></i> <%=us.getName() %></a>
		 <a href="LogoutServelet"
			class="btn btn-light my-2 my-sm-0" type="submit"><i
			class="fa-solid fa-user-plus"></i> Logout</a>
			
			
			<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Profile</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         
         <div style="text-align:center">
                   <i class="fa fa-user fa-3x"></i>
             <h5></h5>
              <table class="table">
                    <tbody>
                              <tr> 
                                  <th>User ID</th>
                                  <td><%=us.getId() %></td>
                              </tr>
                              
                              <tr> 
                                  <th>Full Name</th>
                                  <td><%=us.getName() %></td>
                              </tr>
                              
                               <tr> 
                                  <th>Email Id</th>
                                  <td><%=us.getEmail() %></td>
                              </tr>
                    </tbody>
              </table>
              <div>
               <button type="button" class="btn btn-secondary" data-dismiss="modal" style="background:#8e24aa;">Close</button>
               </div>
         </div>
        
      </div>
      
    </div>
  </div>
  </div>
  <%}%>
			
			<%if(us==null){ %>
			<a href="login.jsp" class="btn btn-light my-2 my-sm-0" type="submit"><i
			class="fa-solid fa-user"></i> Login</a>
		 <a href="Register.jsp"
			class="btn btn-light my-2 my-sm-0" type="submit"><i
			class="fa-solid fa-user-plus"></i> Register</a>
			<%} %>


	</div>
	
	





</nav>