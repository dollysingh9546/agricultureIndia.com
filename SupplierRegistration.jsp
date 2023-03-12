<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
  background:#DDA0DD;	
  margin:0px;
  font-family: 'Ubuntu', sans-serif;
	background-size: 100% 100%;
}
h1, h2, h3, h4, h5, h6, a {
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
<body>
<form action="SupplierRegistrationServlet" method="post">
<div class="login">
  <div class="login-header">
    <h3>Registration</h3>
  </div>
  <div class="login-form">
    <h3>Name:</h3>
    <input type="text" name="sname" placeholder="name" required=""/><br>
    <h3>Email:</h3>
    <input type="email" name="semail" placeholder="user@gmail.com" required=""/><br>
    <h3>password:</h3>
    <input type="password" name="spassword" placeholder="******" required=""/><br>
    <h3>ConfirmPassword:</h3>
    <input type="password" name="sconfirmpassword" placeholder="******" required=""/><br>
     <h3>Gender:</h3>
    <input type="text" name="sgender" placeholder="male" required=""/><br>
     <h3>Address:</h3>
    <input type="text" name="saddress" placeholder="india" required=""/><br>
     <h3>Phone:</h3>
    <input type="text" name="sphone" placeholder="9546728551" required=""/><br>
     <h3>Company:</h3>
    <input type="text" name="scompany" placeholder="agro" required=""/><br>
     <input type="submit" value="Login" class="login-button"/><br>  </div>
</div>
</form>
</body>
</html>