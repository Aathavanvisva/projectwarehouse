<%@page import="dtopack.taskdto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%taskdto task=(taskdto)request.getAttribute("task"); %>

<form action="updatetask" >
task id:<input type="text" name="taskid" hidden="" value="<%=task.getTaskid()%>"><br>
task title:<input type="text" name="tasktitle" value="<%=task.getTasktitle()%>"><br>
task description:<input type="text" name="taskdescription" value="<%=task.getTaskdescription()%>"><br>
Current Task Priority:<h4><%=task.getTaskpriority() %></h4>
priority:<br>
<label for="option1">
<input type="radio" name="taskpriority" id="option1" value="high">high
</label><br>
<label for="option2">
<input type="radio" name="taskpriority" id="option2" value="medium">medium
</label><br>
<label for="option3">
<input type="radio" name="taskpriority" id="option3" value="low">low
</label><br>
due date:<input type="date" name="taskduedate" value="<%=task.getTaskduedate()%>"><br>
task status:<input type="text" name="taskstatus" value="<%=task.getTaskstatus()%>"><br>
<input type="submit">
</form>
</body>
</html>