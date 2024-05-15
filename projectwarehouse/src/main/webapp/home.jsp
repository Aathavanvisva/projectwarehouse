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
body{background-image: url("https://th.bing.com/th/id/OIP.STSskwUZwz6bADb2oaR3dQHaEK?rs=1&pid=ImgDetMain");background-repeat: no-repeat;background-size: cover;}
table{border: 1px solid white; border-collapse: collapse;background-color: threedlightshadow;color: white;width: 100%}
thead{border: 1px solid white;}
tr{border: 1px solid white;}
th{border: 1px solid white;}
tr{border: 1px solid white;}
td{border: 1px solid white;}
#welcome{color: white;display: inline;background-color: threeddarkshadow;}
h3{color: white;display: inline;background-color: threeddarkshadow;}
#a1{border: 1px solid black;padding: 10px 20px;margin-left: 15px;background-color: threedlightshadow;color: white;}
#a1:hover {
 background-color:maroon;color: white;}
#d2{border: 1px solid black;background-image:url("https://th.bing.com/th/id/OIP.STSskwUZwz6bADb2oaR3dQHaEK?rs=1&pid=ImgDetMain");color: threeddarkshadow;padding: 10px;padding-left:30px; grid-column:1/3;background-repeat: no-repeat;background-size: cover;}
#d3{grid-column:3/4;justify-content: left;align-items: left;border: 1px solid black;padding-top: 150px;padding-left: 170px;background-image: url("https://th.bing.com/th/id/OIP.STSskwUZwz6bADb2oaR3dQHaEK?rs=1&pid=ImgDetMain");background-repeat: no-repeat;background-size: cover;}
div{border: 5px solid black;border-style: ridge;}
 th,td{padding: 10px;text-align: center;}
 tr:hover {
 background-color:maroon;color: white;}
 h1{text-align: center;color: threeddarkshadow;}
 #d1{display:grid;grid-template-coloumns:1fr 1fr 1fr;grid-template-rows:280px;}
</style>
</head>
<body>
<div id="d1">
<section id="d2">
<% dto1 dto=(dto1)request.getSession().getAttribute("dto1"); %>
<h1 id="welcome">welcome <%=dto.getname() %></h1><br><br><br>
<h3>EMAIL: <%=dto.getemail() %></h3><br><br>
<%String img=new String(Base64.getEncoder().encode(dto.getimage())) ;%>
<img alt="" src="data:img/jpeg;base64 ,<%=img %>" width="200"height="150"><br><br>

</section>
<section id="d3"><a id="a1" href="task.jsp">Add Task</a> <a id="a1" href="logout">Logout</a><br></section>
</div>
<h1>TASKS</h1><br>
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
<td><a href="delete?id=<%= task.getTaskid()%>">delete</a></td>
<td><a href="edit?id=<%= task.getTaskid()%>">edit</a></td>
</tr>

<%} %>
</tbody>
</table>
</body>
</html>