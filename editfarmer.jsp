
<%@page import="com.model.BLManager" %>
<%@page import="com.pojo.Farmer" %>
<%@page import="java.util.*"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
body {
  background:#FFB6C1	;	
  margin:0px;
  font-family: 'Ubuntu', sans-serif;
	background-size: 100% 100%;
}h1, h2, h3, h4, h5, h6, a {
  margin:0; padding:0;
}
.login {
  margin:0 auto;
  max-width:500px;
}
.login-header {
  color:#fff;
  text-align:center;
  font-size:300%;
}
/* .login-header h1 {
   text-shadow: 0px 5px 15px #000; */
}
.login-form {
  border:.5px solid #fff;
  background:#4facff;
  border-radius:10px;
  box-shadow:0px 0px 10px #000;
}
.login-form h3 {
  text-align:left;
  margin-left:40px;
  color:#fff;
}
.login-form {
  box-sizing:border-box;
  padding-top:15px;
	padding-bottom:10%;
  margin:5% auto;
  text-align:center;
}


.login input[type="text"],.login input[type="password"],.login input[type="email"] {
  max-width:400px;
	width: 80%;
  line-height:3em;
  font-family: 'Ubuntu', sans-serif;
  margin:1em 2em;
  border-radius:5px;
  border:2px solid #f2f2f2;
  outline:none;
  padding-left:5px;
}
.login-form input[type="submit"] {
  height:30px;
  width:100px;
  background:#fff;
  border:1px solid #f2f2f2;
  border-radius:20px;
  color: slategrey;
  text-transform:uppercase;
  font-family: 'Ubuntu', sans-serif;
  cursor:pointer;
}

</style>

 <%
BLManager bl=new BLManager();
Farmer f=new Farmer();
String femail=(String)session.getAttribute("femail");
System.out.print("Before ID:"+femail);
f=bl.serachbyemail(femail);
//System.out.print("After ID:"+r.getId());
request.setAttribute("f", f);

session.getAttribute("fname");
session.getAttribute("fgender");
session.getAttribute("femail");
session.getAttribute("fusername");
session.getAttribute("fpassword");
session.getAttribute("country");

%><form action="editsupplierprofile.jsp" >
<div class="login">
  <div class="login-header">
    <h3>Update Profile</h3>
  </div>
  <div class="login-form">
    <h3>Name:</h3>
    <input type="text" name="fname" placeholder="name" value="${f.fname}" required="" readonly="readonly"/><br>
    <h3>Gender:</h3>
    <input type="text" name="fgender" placeholder="male" value="${f.fgender}" required="" readonly="readonly"/><br>
    <h3>Email:</h3>
    <input type="email" name="femail" placeholder="user@gmail.com" value="${f.femail}" required="" readonly="readonly"/><br>
     <h3>Username:</h3>
     <input type="text" name="fusername" placeholder="name" value="${f.fusername}" required="" readonly="readonly"/><br>
     <h3>password:</h3>
    <input type="password" name="fpassword" placeholder="******" value="${f.fpassword}" required="" readonly="readonly"/><br>
     <h3>Country:</h3>
    <intput type="text" name="country" placeholder="India" value="${f.country}" required="" readonly="readonly"/><br>
    
     <button type="submit" class="btn btn-info btn-fill pull-right/editfarmerprofile.jsp">Update profile</button>  </div>
</div>
</form>


</body>
</html>
