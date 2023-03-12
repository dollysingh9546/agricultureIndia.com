<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="EditSupplierServlet" method="post">
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
<td><input type="text" name="sname" placeholder="ramkumar" required=""/></td>
</tr>


 <tr><td>Email:</td><td><input type="email" name="semail" placeholder="ramkumar@gmail.com" required=""/></td></tr>
  
 <tr>

<td>Password</td>
<td><input type="password" name="spassword" placeholder="ramkumar" required=""/></td>
</tr>
<td>Comfirm Password</td>
<td><input type="password" name="sconfirmpassword" placeholder="ramkumar" required=""/></td>
</tr>
<tr><td>Gender:</td><td>  
<input type="radio" name="sgender" value="male"/>Male
<input type="radio" name="sgender" value="female" required=""/>Female</td></tr>
<tr>
<td>Address</td>
<td><input type="text" name="saddress" placeholder="Mumbai" required=""/></td>
</tr>
<tr>
<td>Phone no.</td>
<td><input type="text" name="sphone" placeholder="8811236555" required=""/></td>
</tr>
<tr>
<td>Company</td>
<td><input type="text" name="scompany" placeholder="agro" required=""/></td>
</tr>
  <tr><td><input type="submit" value="Submit" /></td>
<td><input type="reset" value="Reset" /></td></tr>
<tr>
<td colspan="2">Already registered!! <a href="Supplier.jsp">Login Here</a></td>
</tr>
</tbody>
  </table>  
</center>
</form>
</body>
</html>