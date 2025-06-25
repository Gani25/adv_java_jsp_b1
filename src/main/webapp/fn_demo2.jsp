<%@page import="com.sprk.util.FuncUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!%>

<h1>
	
	Number = 15 is Prime or Not?

</h1>
<h3><%= FuncUtil.checkPrime(15) %></h3>

<p>Series of Prime Number from 1 to 100</p>
<!-- 1 2 3 5 7 11 13 17 19.....  -->
<%
	for(int i = 1; i<= 100;i++)
	{
		if(FuncUtil.checkPrime(i)){
			out.print("<span>"+i+" </span>");
		}
	}
%>

<!-- 
n = 9
0 1 1 2 3 5 8 13 21 

Use function with void and use out.print inside fn
-->

</body>
</html>