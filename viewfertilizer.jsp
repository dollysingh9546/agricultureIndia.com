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
background-image:url("images/Mpsg2b2.jpg");
} 
h1{ margin-top: 50px;
 margin-left:40%;
}

#fatilizer {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width:100%;
  background-color: #dfff80;
  text-align: center;
  /* */
}

#fatilizer td, #crop th {
  border: 1px solid #ddd;
  padding: 8px;
}

#fatilizer tr:nth-child(even){
background-color: #f2f2f2;
text-align: center;
}

#fatilizer tr:hover {
background-color: #ddd;
}

#fatilizer th {
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
List<Fertilizer> ll = blm.getAllFertilizers();
session.setAttribute("list", ll);
%>  
 
  
<h1>fertilizer list</h1>
<!-- <form action="ViewSupplierServlet" method="post"> -->
<table border="1"  id="fatilizer">
    <tr><th>Id</th><th>Name</th><th>Rate</th><th>Quantity</th><th>Usedcrop</th><th>Delete</th><th>Edit</th></tr>  

<c:forEach items="${sessionScope.list}" var="e">
<tr>
<td>${e.getFrid()}</td>
<td>${e.getFrname()}</td>
<td>${e.getFrrate()}</td>
<td>${e.getFrquantity()}</td>
<td>${e.getUsedcrop()}</td>
<td><a href="DeleteFertilizerServlet?frid=${e.frid}">Delete</a></td>
<td><a href="EditFertilizerServlet?frid=${e.frid}">Edit</a></td>
</tr> 
</c:forEach>
</table>



<br/><a href="fertilizer.jsp">Add New fertilizer</a> 


</body>
</html>