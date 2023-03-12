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
}h1{ margin-top: 50px;
/* margin-left: 300px; */}
#crop {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width:100%;
  text-align: center;
  /* margin-left: 300px; */
}

#crop td, #crop th {
  border: 1px solid #ddd;
  padding: 8px;
}

#crop tr:nth-child(even){background-color: #f2f2f2;}

#crop tr:hover { 
background-color: #ddd;
text-align: center;
}

#crop th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #4CAF50;
  color: white;
}

</style>

<body>
  

<%
	BLManager blm = new BLManager();
	List<Crop> p = blm.getAllCrops();
	session.setAttribute("list", p);
%>
  
<h1><center>Crops and Seed list</center></h1>
<!-- <form action="ViewSupplierServlet" method="post"> -->
<table id="crop">
    <tr><th>cid</th><th>cname</th><th>cprice</th><th>cquantity</th><th>ctype</th><th>Delete</th><th>Edit</th></tr>  

<c:forEach items="${sessionScope.list}" var="l">
<tr>
<td>${l.getCid()}</td>
<td>${l.getCname()}</td>
<td>${l.getCprice()}</td>
<td>${l.getCquantity()}</td>
<td>${l.getCtype()}</td>
<td><a href="DeleteServlet?cid=${l.cid}">Delete</a></td>
<td><a href="EditServlet?cid=${l.cid}">Edit</a></td>
</tr> 
</c:forEach>
</table>



<br/><center><a href="Crop.jsp">Add New crop and seed</a></center> 



</body>
</html>