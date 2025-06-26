<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Info</title>
</head>
<body>

	<form action="<%=request.getContextPath() %>/user_response.jsp">

		<br> <br> <br> <label for="fName">First Name</label> <input
			type="text" id="fName" name="first_name"> <br> <br>
		<label for="lName">Last Name</label> <input type="text" id="lName"
			name="last_name"> 
			
			<br><br>
			<label>Gender</label>
			<input type="radio" name="gender" id="male" value="Male"><label for="male">Male</label>
			<input type="radio" name="gender" id="female" value="Female"><label for="female">Female</label>
			<input type="radio" name="gender" id="other" value="Others"><label for="other">Other</label>
		
			
			<br> <br> 
			<label>Country</label>
			<select name="country">
				<option></option>
				<option>India</option>
				<option>USA</option>
				<option>France</option>
				<option>Germany</option>
				<option>UK</option>
				<option>Italy</option>
				<option>UAE</option>
				<option>South Africa</option>
			</select>			
			<br> <br>
			
			<label>Favourite Foods</label>
			<br>
			<input name="fav_foods" type="checkbox" id="banana" value="Banana" ><label for="banana">Banana</label> 
			<input name="fav_foods" type="checkbox" id="pavbhaji" value="Pav Bhaji"><label for="pavbhaji">Pav Bhaji</label> 
			<input name="fav_foods" type="checkbox" id="pizza" value="Pizza"><label for="pizza">Pizza</label> 
			<input name="fav_foods" type="checkbox" id="sand" value="Sandwich"><label for="sand">Sandwich</label> 
			<input name="fav_foods" type="checkbox" id="app" value="Apple"><label for="app">Apple</label> 
			<input name="fav_foods" type="checkbox" id="man" value="Mango"><label for="man">Mango</label> 
			<input name="fav_foods" type="checkbox" id="las" value="Lassi"><label for="las">Lassi</label> 
			<br> <br> 

			<input type="submit"
			value="save">
	</form>

</body>
</html>