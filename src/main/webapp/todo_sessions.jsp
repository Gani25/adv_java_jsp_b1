<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>To Do App</title>
</head>
<body>

<form action="todo_sessions.jsp">
	<label for="task">Task</label>
	<br>
	<input type="text" id="task" name="task">
	
	
	<br>
	<br>
	<input type="submit" value="Save Task">
</form>

<br>
<form action="todo_sessions.jsp">
	<input type="hidden" name="operation" value="clear">
	
	<input type="submit" value="Clear Sessions">
</form>
	
	<hr>
	
	<%
		String operation = request.getParameter("operation");
		if(operation != null && operation.equals("clear")){
			session.removeAttribute("tasks");
		}
	%>
	
	<ol>
	<%
	
	List<String> allTasks = (List<String>)session.getAttribute("tasks");
			if(allTasks == null)
			{
		// in this case when our list is empty then only create empty list
		allTasks = new ArrayList<>();
		
		// save this list into session
		session.setAttribute("tasks", allTasks);
			}
		String task = request.getParameter("task");
		if (task != null && !task.isBlank()) {
			
			task = task.trim();
			
			// check if task not exists then only insert
			if(!allTasks.contains(task))
			{
		
		allTasks.add(task);
			}
		}

		if (!allTasks.isEmpty()) {
			// Loop
			for (String t : allTasks) {
		out.print("<li>" + t + "</li>");
			}
		}
	%>
	</ol>
	

</body>
</html>