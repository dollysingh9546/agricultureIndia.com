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
   background-image: url("images/vvg.png");
}
 }
 </style>
<body>
<center>

<form action="VegetableServlet" method="post">
<table cellpadding="2" width="350" height="400">
<thead> <tr> <th colspan="2" style="font-size:27px"><b><u>Crop Information</u></b></th></tr></thead>


<tr><td style="font-size:25px"><b>Vegetable Name:</b></td><td><input type="text" name="fname" value=""></td></tr>
<tr><td style="font-size:25px"><b>Vegetable Quantity</b></td><td><input type="text" name="fquntity" value=""></td></tr>
<tr><td style="font-size:25px"><b>Vegetablet Price:</b></td><td><input type="text" name="fprice" value=""></td></tr>
<tr><td style="font-size:25px"><b>state:</b></td><td><input type="text" name="state" value=""></td></tr>
<tr><td style="font-size:25px"><b>City:</b></td><td><input type="text" name="city" value=""></td></tr>
<tr><td style="font-size:25px"><input type="submit" value="Save"></td>
<td style="font-size:25px"><input type="reset" value="Reset"></td></tr></table>
</div>
</form>
</center>


</body>
</html>