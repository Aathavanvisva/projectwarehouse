<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{margin-top: 16%;margin-left: 30%; background-image: url("https://64.media.tumblr.com/d119c05e7eb0ef535dc0727753e6ae3b/41239dd54afede82-06/s540x810/29c49a05974f9ef27035e4a46b42932ac5ca26e3.jpg");
background-repeat: no-repeat;background-size: 1450px 800px;
}
</style>
</head>
<body>

 <fieldset style="background-color: blue;width: 50%;">
	 <summary style="border: 1px solid black;text-align:center; background-color: aqua;">signup</summary>
	<form style="text-align: center;background-color: bisque;" action="SaveUser" method="post" enctype="multipart/form-data">

name:<input type="text" name="name"><br>
email:<input type="email" name="email"><br>
contact:<input type="text" name="contact"><br>
password:<input type="text" name="password"><br>
image:<input type="file" name="image"><br>
<input type="submit">
</form>
 </fieldset>
</body>
</html>
