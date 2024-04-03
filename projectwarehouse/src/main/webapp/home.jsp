<%@page import="java.util.Base64"%>
<%@page import="dtopack.dto1"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% dto1 dto=(dto1)request.getSession().getAttribute("dto1"); %>
<h3>welcome <%=dto.getname() %></h3>
<h3>EMAIL: <%=dto.getemail() %></h3>
<%String img=new String(Base64.getEncoder().encode(dto.getimage())) ;%>
<img alt="" src="data:img/jpeg;base64 ,<%=img %>" width="200"height="150">
<a href="task.jsp">task</a>
</body>
</html>