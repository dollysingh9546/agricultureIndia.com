
<%@page import="com.model.BLManager" %>
<%@page import="com.pojo.Farmer" %>
<%@page import="java.util.*"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@include file="editfarmer.jsp" %> --%>
 <%
BLManager blm=new BLManager();
Farmer f=new Farmer();
String femail=(String)session.getAttribute("femail");
System.out.print("Before ID:"+femail);
f=blm.serachbyemail(femail);
//System.out.print("After ID:"+r.getId());
request.setAttribute("f", f);

session.getAttribute("fname");
session.getAttribute("fgender");
session.getAttribute("femail");
session.getAttribute("fusername");
session.getAttribute("fpassword");
session.getAttribute("country");

%>

<table border="1" width="20%" cellpadding="2">

<div class="content" >
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-10">
				<div class="card">
					<div class="header">
						<h4 class="title">Edit profile</h4>
						<div class="content">
							
							 
							  <form action="UpdateFarmerServlet" method="post"> 

							 
								<div class="row">
								
								<input type="hidden" name="fid" value="${f.fid }">
								
								<div class="col-md-8">
										<div class="form-group">
											<label>Name:</label> <input type="text" 
												class="form-control" name="fname" 
												placeholder="fname" value="${f.fname}">
										</div>
									</div>
									
								<div class="col-md-8">
										<div class="form-group">
											<label>Gender:</label> <input type="text" 
												class="form-control" name="fgender" 
												placeholder="male" value="${f.fgender }">
										</div>
									</div>
									
									<div class="col-md-8">
										<div class="form-group">
											<label>Email:</label> <input type="text" 
												class="form-control" name="femail" 
												placeholder="f@gmail.com" value="${f.femail}">
										</div>
									</div>
									
									<div class="col-md-8">
										<div class="form-group">
<label>Username:</label> <input type="text" class="form-control" name="fusername" 
placeholder="name" value="${f.fusername}">
										</div>
									</div>
											
											<div class="col-md-8">
										<div class="form-group">
											<label>Password:</label> <input type="text" 
												class="form-control" name="fpassword" 
												placeholder="******" value="${f.fpassword}">
										</div>
									</div>
									
									
									
									
																		
									
											<div class="col-md-8">
										<div class="form-group">
											<label>Country:</label> <input type="text" 
												class="form-control" name="country" 
												placeholder="india" value="${f.country}">
										</div>
									</div>
									
									
					<button type="submit" class="btn btn-info btn-fill pull-right/editfarmerprofile.jsp">Update profile</button>
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
							

