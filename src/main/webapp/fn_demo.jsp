<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!String checkPrime(int num) {

		for (int i = 2; i <= num / 2; i++) {
			if (num % i == 0) {
				// not prime
				return "Number is Not a Prime Number";
			}
		}
		return "Number is a Prime Number";
	}%>

<h1>
	
	Number = 15 is Prime or Not?

</h1>
<h3><%=checkPrime(15) %></h3>

<p>Series of Prime Number from 1 to 100</p>

</body>
</html>