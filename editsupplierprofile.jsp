
<%@page import="com.model.BLManager" %>
<%@page import="com.pojo.Supplier" %>
<%@page import="java.util.*"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

 <%
BLManager bl=new BLManager();
Supplier s=new Supplier();
String semail=(String)session.getAttribute("semail");
System.out.print("Before ID:"+semail);
s=bl.searchbyEmail(semail);
//System.out.print("After ID:"+r.getId());
request.setAttribute("s", s);

session.getAttribute("sname");
session.getAttribute("semail");
session.getAttribute("spassword");
session.getAttribute("sconfirmpassword");
session.getAttribute("sgender");
session.getAttribute("saddress");
session.getAttribute("sphone");
session.getAttribute("scompany");

%>

<table border="1" width="20%" cellpadding="2">

<div class="content" >
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-10">
				<div class="card">
					<div class="header">
						<h4 class="title"><b>Edit profile</b></h4>
						<div class="content">
							
							 
							  <form action="UpdateSupplierServlet" method="post"> 

							 
								<div class="row">
								
								<input type="hidden" name="sid" value="${s.sid }">
								
								<div class="col-md-8">
										<div class="form-group">
											<label>Name:</label> <input type="text" 
												class="form-control" name="sname" 
												placeholder="sname" value="${s.sname}"/>
										</div>
									</div>
									
								
									</div>
									
									<div class="col-md-8">
										<div class="form-group">
											<label>Email:</label> <input type="text" 
												class="form-control" name="semail" 
												placeholder="s@gmail.com" value="${s.semail}"/>
										</div>
									</div>
											
											<div class="col-md-8">
										<div class="form-group">
											<label>Password:</label> <input type="text" 
												class="form-control" name="fpassword" 
												placeholder="******" value="${f.fpassword}"/>
										</div>
									</div>
									<div class="col-md-8">
										<div class="form-group">
											<label>Password:</label> <input type="text" 
												class="form-control" name="sconfirmpassword" 
												placeholder="******" value="${s.sconfirmpassword}"/>
										</div>
									</div>
									
									<div class="col-md-8">
										<div class="form-group">
											<label>Gender:</label> <input type="text" 
												class="form-control" name="sgender" 
												placeholder="male" value="${s.sgender}"/>
										</div>
									
									</div>
																		
									
											<div class="col-md-8">
										<div class="form-group">
											<label>Country:</label> <input type="text" 
												class="form-control" name="sphone" 
												placeholder="2546879525" value="${s.sphone}"/>
										</div>
									</div>
									
											<div class="col-md-8">
										<div class="form-group">
											<label>Country:</label> <input type="text" 
												class="form-control" name="scompany" 
												placeholder="company" value="${s.scompany}"/>
										</div>
									</div>
									
									
					<button type="submit" class="btn btn-info btn-fill pull-right/editsupplierprofile.jsp">Update profile</button>
								<div class="clearfix"></div>
								
								
							
						</form>
					
					  </div>
					 </div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</table>
							

