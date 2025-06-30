<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Preference Updated</title>
</head>
<body>

<%
	String prefferedSkills = request.getParameter("preffered_skill");

	// Here we will set the skills into cookies
	
	// Encode 
	prefferedSkills = URLEncoder.encode(prefferedSkills);
	
	// step 1: create a cookie and named your coookie
	Cookie cookie = new Cookie("favSkill", prefferedSkills);
	
	// step 2: set the life of cookie
	// 10min -> 60sec * 10mins
	// 1 year -> 60s * 60mins * 24hour * 365days
	cookie.setMaxAge(60*10);
	
	// step 3: sent this cookie into browser
	response.addCookie(cookie);
%>

<h1>Your Prefence Have Been Set To <%=URLDecoder.decode( prefferedSkills) %></h1>

<a href="job-portal.jsp">Explore Jobs</a>

</body>
</html>