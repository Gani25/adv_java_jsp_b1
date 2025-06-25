<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Day 2</title>
</head>
<body>

<h1>Welcome to SPRK</h1>

<!-- JSP Expressions -->
<h3>Time on server is <%= new Date() %></h3>

<!-- Scriplet -> We can write one to many line of Java Code -->
<%
int a = 30;
int b = 14;

int result = a / b;
int remainder = a % b;
%>

<h3><%=a %> / <%= b %> = <%= result %></h3>
<h3><%=a %> % <%= b %> = <%= remainder%></h3>
<!-- Condition -->
<%
// Condition = if else
	if(remainder % 2 == 0){
		out.print("<h2>Remainder = "+remainder +" is even</h2>");
	}else{
		out.print("<h2>Remainder = "+remainder +" is Odd</h2>");
	}
%>

</body>
</html>