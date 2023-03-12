<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>
<%
    if ((session.getAttribute("fusername") == null) || (session.getAttribute("fusername") == "")) {
%>
You are not logged in<br/>
<a href="Farmer.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("fusername")%>
<a href='logout.jsp'>Log out</a>
<%
    }
%>
</body>
</html>