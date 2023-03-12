<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.model.*"%>
    <%@page import="com.controller.*"%>
    <%@page import="com.pojo.*"%>
    <%@page import="java.util.*"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body{
background-image:url("images/home_1.jpg");
} 
h1{ margin-top: 50px;
 margin-left:40%;
}

#supplier {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width:100%;
  background-color: #dfff80;
  text-align: center;
  /* */
}

#supplier td, #crop th {
  border: 1px solid #ddd;
  padding: 8px;
}

#supplier tr:nth-child(even){
background-color: #f2f2f2;
text-align: center;
}

#supplier tr:hover {
background-color: #ddd;
}

#supplier th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #4CAF50;
  color: white;
}

</style>
<body>
<%  
BLManager blm=new BLManager();
List<Supplier> l = blm.getAllSupplier();
session.setAttribute("list", l);
%>  
  
<h1>Supplier list</h1>
<!-- <form action="ViewSupplierServlet" method="post"> -->
<table border="1" width="30%" cellpadding="3" id="supplier">
    <tr><th>Id</th><th>Name</th><th>Email</th><th>Password</th><th>Confirmpassword</th>
    <th>Gender</th></th><th>Address</th><th>Phone</th><th>Company</th>
    <th>Delete</th>
    <th>Edit</th>
    </tr>  

<c:forEach items="${list}" var="s">
<tr>
<td>${s.getSid()}</td>
<td>${s.getSname()}</td>
<td>${s.getSemail()}</td>
<td>${s.getSpassword()}</td>
<td>${s.getSconfirmpassword()}</td>
<td>${s.getSgender()}</td>
<td>${s.getSaddress()}</td>
<td>${s.getSphone()}</td>
<td>${s.getScompany()}</td>
<td><a href="DeleteSupplierServlet?sid=${s.sid}">Delete</a></td>
<td><a href="EditSupplierServlet?sid=${s.sid}">Edit</a></td>


</tr> 
</c:forEach>
</table>



<br/><a href="Supplier.jsp">Add New Supplier</a> 


</body>
</html>