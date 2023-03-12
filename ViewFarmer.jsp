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
background-image:url("images/far.jpg");
} 
h1{ margin-top: 50px;}

#farmer {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width:100%;
  background-color: #dfff80;
  text-align: center;
  /* margin-left: 300px; */
}

#farmer td, #crop th {
  border: 1px solid #ddd;
  padding: 8px;
}

#farmer tr:nth-child(even){background-color: #f2f2f2;}

#farmer tr:hover {
background-color: #ddd;
text-align: center;
}

#farmer th {
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
List<Farmer> l = blm.getAllFarmer();
session.setAttribute("list", l);
%>  
  

<!-- <form action="ViewFarmerServlet" method="post"> -->
<br>
<center>
<h1><b>Farmer list</b></h1>
<table border="1" width="450" height="300" cellpadding="3" id="farmer">
    <tr><th>Id</th><th><b>Name</b></th><th><b>Gender</b></b></th><th><b>Email</b></th>  
<th><b>Username</b></th><th><b>Password</b></th><th><b>Country</b></th><th><b>Delete</b></th><th><b>Edit</b></th></tr>  

<c:forEach items="${sessionScope.list}" var="f">
<tr>
<td>${f.getFid()}</td>
<td>${f.getFname()}</td>
<td>${f.getFgender()}</td>  
<td>${f.getFemail()}</td>
<td>${f.getFusername()}</td>
<td>${f.getFpassword()}</td>
<td>${f.getCountry()}</td>
<td><a href="DeleteFarmerServlet?fid=${f.fid}">Delete</a></td>
<td><a href="EditFarmerServlet?fid=${f.fid}">Edit</a></td>
</tr> 
</c:forEach>
</table>
<br/>
<a href="farmer.jsp">Add New Farmer</a> 
</center>




</body>
</html>