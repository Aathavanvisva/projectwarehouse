<%@page import="dtopack.taskdto"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Base64"%>
<%@page import="dtopack.dto1"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{background-color:orange;}
table{border: 1px solid black; border-collapse: collapse; background-color: gray;}
thead{border: 1px solid black;}
tr{border: 1px solid black;}
th{border: 1px solid black;}
tr{border: 1px solid black;}
td{border: 1px solid black;}
a{border: 1px solid black;padding: 10px 20px;margin-left: 15px;}
a:hover {
 background-color:maroon;color: white;
}
</style>
</head>
<body>
<% dto1 dto=(dto1)request.getSession().getAttribute("dto1"); %>
<h3>welcome <%=dto.getname() %></h3>
<h3>EMAIL: <%=dto.getemail() %></h3>
<%String img=new String(Base64.getEncoder().encode(dto.getimage())) ;%>
<img alt="" src="data:img/jpeg;base64 ,<%=img %>" width="200"height="150">
<a href="task.jsp">task</a><br>
<h1>tasks</h1><br>
<%List<taskdto>tasks=(List)request.getAttribute("tasks"); %>
<table>
<thead>
<tr>
<th>Task id</th>
<th>Task Title</th>
<th>Task Description</th>
<th>Task Priority</th>
<th>Due Date</th>
<th>Task Status</th>
</tr>
</thead>
<tbody>
<%for(taskdto task:tasks){ %>
<tr>
<td><%=task.getTaskid() %></td>
<td><%=task.getTasktitle() %></td>
<td><%=task.getTaskdescription() %></td>
<td><%=task.getTaskpriority() %></td>
<td><%=task.getTaskduedate() %></td>
<td><%=task.getTaskstatus() %></td>
</tr>

<%} %>
</tbody>
</table>
</body>
</html>