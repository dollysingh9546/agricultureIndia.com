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
background-image: url("images/cABBAGE+MACHINE+W+CLOUDS.jpg");
}
</style>

<body>


<center>

<form action="EditServlet" method="post">
<table border="1" width="20%" cellpadding="2">
<thead> <tr> <th colspan="2">Crop Information</th></tr></thead>


<tr><td>Crop Name:</td><td><input type="text" name="cname" value="${list.cname}"></td></tr>
<tr><td>Crop Price:</td><td><input type="text" name="cprice" value="${list.cprice}"></td></tr>
<tr><td>Crop Quantity:</td><td><input type="text" name="cquantity" value="${list.cquantity}"></td></tr>
<tr><td>Crop Type:</td><td>
 <select name="ctype" style="width:155px"> 
 <option>       </option> 
<option>Cereals</option>  
<option>fruits</option>  
<option>Vegetables</option>  
<option>Oilseeds</option>  
<option>Pulses</option>  
</select>  
</tr>
<tr><td><input type="submit" value="Save"></td>
<td><input type="reset" value="Reset"></td></tr></table>

</form>
</center>



</body>
</html>