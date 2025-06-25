<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%!boolean checkPrime(int num) {

		for (int i = 2; i <= num / 2; i++) {
			if (num % i == 0) {
				// not prime
				return false;
			}
		}
		return true;
	}%>

	<h1>---Prime Number Series---</h1>
	<form action="">

		<label for="num">Number</label> <input type="text" id="num"
			name="num1"> <br>
		<br> <input type="submit" value="Prime Numbers">
	</form>

	<hr>

	<%
	String numString = request.getParameter("num1");
	// First check if String Num is not empty then only convert to int

	if (numString != null && !numString.isBlank()) {
		
		numString = numString.trim();
		
		// Before converting into int check it should only have numbers
		
		if(numString.matches("^\\d+$"))
		{
		int num = Integer.parseInt(numString);

		out.print("<p>Series of Prime Number from 1 to " + num + "</p>");
		for (int i = 1; i <= num; i++) {
			if (checkPrime(i)) {
		out.print("<span>" + i + " </span>");
			}
		}
			
		}else{
			out.print("<p style='color:red;'>Enter Number Only</p>");
		}

	}
	%>
</body>
</html>