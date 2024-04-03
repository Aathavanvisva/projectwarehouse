<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="addtask" method="post">
task id:<input type="text" name="taskid"><br>
task title:<input type="text" name="tasktitle"><br>
task description:<input type="text" name="taskdescription"><br>
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
due date:<input type="date" name="taskduedate"><br>
<input type="submit">
 
</form>
</body>
</html>