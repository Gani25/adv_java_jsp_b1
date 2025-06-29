<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change Job Preference</title>
</head>
<body>

<hr>
<h1>Change Jobs Preference</h1>
<hr>

<form action="cookie-response.jsp">
	
	Skills:
	<select name="preffered_skill">
		<option>Java</option>
		<option>Python</option>
		<option>Javascript</option>
		<option>Data Analysis</option>
		<option>MERN</option>
		<option>Gen AI</option>
	</select>
	
	<br><br>
	<input type="submit" value="Save Preference">
</form>

</body>
</html>