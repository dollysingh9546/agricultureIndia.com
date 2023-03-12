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
background-image:url("images/grow.jpg");
}

</style>

<body>


<center>

<form action="CropServlet" method="post">



Crop Name:
<input type="text" name="cname" value="" required=""><br>
Crop Price:</td><td><input type="text" name="cprice" value="" required=""><br>
Crop Quantity:</td><td><input type="text" name="cquantity" value="" required=""><br>
Crop Type:
 <select name="ctype" style="width:155px" required=""> 
 <option>       </option> 
<option>Cereals</option>  
<option>fruits</option>  
<option>Vegetables</option>  
<option>Oilseeds</option>  
<option>Pulses</option>  
</select> <br> 

<input type="submit" value="Save">
<td><input type="reset" value="Reset">

</form>
</center>



</body>
</html>