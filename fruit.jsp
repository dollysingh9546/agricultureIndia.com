<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body{
margin-left:200px;
   margin-top:200px;
    background-image: url("images/f45.jpg");
  
   
    font-size: 20px;
 }
 }
 </style>
<body>
<center>

<form action="FruitServlet" method="post">
<table cellpadding="2" width="350" height="300">
<thead> <tr> <th colspan="2" style="font-size:27px"><b><u>Fruit Information</u></b></th></tr></thead>


<tr><td><b>Fruit Name:</b></td><td><input type="text" name="fname" value="" required=""></td></tr>
<tr><td><b>Fruit Quantity:</b></td><td><input type="text" name="fquantity" value="" required=""></td></tr>
<tr><td><b>Fruit Price:</b></td><td><input type="text" name="fprice" value="" required=""></td></tr>
<tr><td><b>state:</b></td><td><input type="text" name="state" value="" required=""></td></tr>
<tr><td><b>City:</b></td><td><input type="text" name="city" value="" required=""></td></tr>
<tr><td><input type="submit" value="Save"></td>
<td><input type="reset" value="Reset"></td></tr></table>

</form>
</center>


</body>
</html>