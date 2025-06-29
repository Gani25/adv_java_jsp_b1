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

	<ol>
		<li><%=prefferedSkill %> Job1</li>
		<li><%=prefferedSkill %> Job2</li>
		<li><%=prefferedSkill %> Job3</li>
	</ol>
	<hr>

	<a href="cookie-form.jsp">Modify Job Preferences</a>
</body>
</html>