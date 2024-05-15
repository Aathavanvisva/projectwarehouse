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
<body >
 <fieldset style="background-color: blue;width: 50%;">
	 <summary style="border: 1px solid black; text-align:center; background-color: aqua;">LOGIN</summary>
	<form style="text-align: center;background-color: bisque;height: 150px;" action="Login">
email<input type="text" name="email"><br>
password<input type="password" name="password"><br>
<input type="submit">
<%String s=(String)request.getAttribute("message");
if(s=="password wrong")
{%>
<h2><%="password wrong" %>	</h2>
<%} 
else{
%>
<h2><%="invalid email" %></h2>
<%} %>
</form>
 </fieldset>
</body>
</html>