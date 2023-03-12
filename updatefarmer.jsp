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
background-image: url("images/doll.jpg");
}
</style>

<body>
<form action="EditFarmerServlet" method="post">
<center>
<table border="1" width="30%" cellpadding="5">
<thead>
<tr>
 <th colspan="2">Enter Information Here</th>
</tr>
</thead>

<tbody>
<tr>
<td>Name</td>
<td><input type="text" name="fname"/></td>
</tr>
<tr><td>Gender:</td><td>  
<input type="radio" name="fgender" value="male"/>Male
<input type="radio" name="fgender" value="female"/>Female</td></tr>

 <tr><td>Email:</td><td><input type="email" name="femail"/></td></tr>
 <tr>
  <td>User Name</td>
 <td><input type="text" name="fusername"  /></td>
   </tr>
 <tr>

<td>Password</td>
<td><input type="password" name="fpassword"/></td>
</tr>
  
<tr><td>Country:</td><td>  
<select name="country" style="width:155px">  
<option>India</option>  
<option>Pakistan</option>  
<option>Afghanistan</option>  
<option>Berma</option>  
<option>Other</option>  
</select>  
</tr>


<tr><td><input type="submit" value="Submit" /></td>
<td><input type="reset" value="Reset" /></td></tr>

<tr>
<td colspan="2">Already registered!! <a href="Farmer.jsp">Login Here</a></td>
</tr>
</tbody>
  </table>  
</center>
</form>
</body>
</html>