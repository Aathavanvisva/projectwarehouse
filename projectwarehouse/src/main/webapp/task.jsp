<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
form{color:white;font-size:x-large; background-color: fuchsia;background-image: url("https://th.bing.com/th/id/OIP.lIOqYNQIj07IMr-6E3mYRwHaEK?rs=1&pid=ImgDetMain");}
body{margin-top: 16%;margin-left: 30%;background-image: url("https://th.bing.com/th/id/OIP.ayu2VnCp2zLCANAKwga0TgHaEK?rs=1&pid=ImgDetMain");}
fieldset {
	background-image: url("https://th.bing.com/th/id/OIP.lIOqYNQIj07IMr-6E3mYRwHaEK?rs=1&pid=ImgDetMain");
}
#submit:hover{background-color: maroon;color: white;}
summary{background-image: url("https://th.bing.com/th/id/OIP.lIOqYNQIj07IMr-6E3mYRwHaEK?rs=1&pid=ImgDetMain");}
</style>
</head>
<body>
 <fieldset style="width: 50%;">
  <summary style= "border: 1px solid black; text-align:center;">ADD TASK</summary>
<form action="addtask">
task id:<input type="text" name="taskid" hidden="" value=""><br>
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
<input type="submit" id="submit" style="text-align: center; margin-left: 80%;padding:10px;" >
 
</form>
</fieldset>
</body>
</html>