<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
     <%@page import="com.model.*"%>
    <%@page import="com.controller.*"%>
    <%@page import="com.pojo.*"%>
    <%@page import="java.util.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body{
background-image:url("images/yt.jpg");
} 
h1{ margin-top: 50px;
 margin-left:40%;
}

#machine {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width:100%;
  background-color: #dfff80;
  ;
  /* */
}

#machine td, #crop th {
  border: 1px solid #ddd;
  padding: 8px;
}

#machinetr:nth-child(even){
background-color: #f2f2f2;

}

#machine tr:hover {
background-color: #ddd;
}

#machine th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}

</style>

<body>
<%  
BLManager blm=new BLManager();
List<Machine> ll = blm.getAllMachine();
session.setAttribute("list", ll);
%>  
 
  
<h1>machine list</h1>
<!-- <form action="ViewSupplierServlet" method="post"> -->
<table border="1" width="30%" cellpadding="3" id="machine">
    <tr><th>mid</th><th>mname</th><th>mdescription</th><th>mimage</th><th>Delete</th><th>Edit</th></tr>  

<c:forEach items="${sessionScope.list}" var="m">
<tr>
<td>${m.getMid()}</td>
<td>${m.getMname()}</td>
<td>${m.getMdescription()}</td>
<td><img alt="abc" src="images/${m.getMimage()}"></td>
<td><a href="DeleteMachineServlet?mid=${m.mid}">Delete</a></td>
<td><a href="EditMachineServlet?mid=${m.mid}">Edit</a></td>
</tr> 
</c:forEach>
</table>



<br/><a href="Machine.jsp">Add New machine</a> 



</body>
</html>