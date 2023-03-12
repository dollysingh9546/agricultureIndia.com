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
background-image: url("images/yt.jpg");
}
</style><body><center>
<form action="MachineServlet" method="post" enctype="multipart/form-data">
<table border="1" width="20%" cellpadding="2">
<thead> <tr> <th colspan="2">Machine Information</th></tr></thead>


<tr><td>Machine Name:</td><td><input type="text" name="mname" value="" required=""></td></tr>
<tr><td>Machine Description:</td><td><input type="text" name="mdescription" value="" required=""></td></tr>
<tr><td>Machine Image:</td><td><input type="file" name="mimage" value="" required=""></td></tr>
<tr><td><input type="submit" value="Save"></td>
<td><input type="reset" value="Reset"></td></tr></table>


</form>
</center>
</body>
</html>