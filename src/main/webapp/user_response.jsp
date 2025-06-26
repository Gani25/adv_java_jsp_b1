<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>

<h1>Welcome</h1>
<h2>First Name = <%=request.getParameter("first_name") %></h2>
<h2>First Name = ${param.first_name }</h2>
<h2>Last Name = <%=request.getParameter("last_name") %></h2>
<h2>Gender = <%=request.getParameter("gender") %></h2>
<h2>Country = <%=request.getParameter("country") %></h2>
<%
	String[] foods =request.getParameterValues("fav_foods");


%>
<h2>My Favourite Foods = <%=Arrays.asList(foods) %></h2>

</body>
</html>