<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jobs Founded</title>
</head>
<body>

	<%
	// Step 1: Set Preffered Skill
	String prefferedSkill = "Java";

	// Step 2: Find The Cookie
	Cookie[] cookies = request.getCookies();

	// Step 3: Search For Cookies with our name if found then change the preffered skills to whatever found in cookie
	if (cookies != null) {
		for (Cookie ck : cookies) {
			if (ck.getName().equals("favSkill")) {
		// If matched then change the pref to cookie value
		prefferedSkill = ck.getValue();
		prefferedSkill = URLDecoder.decode(prefferedSkill);

		break;
			}
		}

	}
	%>

	<hr>
	<h1>Welcome to Job Portal</h1>
	<hr>
	<h3>Show Jobs of <%=prefferedSkill %></h3>
	<hr>
	
	<%
		if(prefferedSkill.equalsIgnoreCase("Java")){
			out.print("<a>Java Job 1</a><br><a>Java Job 2</a><br><a>Java Job 3</a><br>");
		}
		else if(prefferedSkill.equalsIgnoreCase("Gen Ai")){
			out.print("<a>Gen AI Job 1</a><br><a>Gen AI Job 2</a><br><a>Gen AI Job 3</a><br>");
		}
		else if(prefferedSkill.equalsIgnoreCase("Data Analysis")){
			out.print("<a>Power BI Job</a><br><a>SQL Job</a><br><a>Data Analyst Job</a><br>");
		}
	%>


	<hr>

	<a href="cookie-form.jsp">Modify Job Preferences</a>
</body>
</html>