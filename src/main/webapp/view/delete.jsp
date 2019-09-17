<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>
</head>
<body>
	<div>
		<div>
			<div>
				<h2>Delete Students</h2>
			</div>
			<%
			// notify when student deleted 
			if (request.getAttribute("data") != null) {
				out.println("<p>Student deleted!</p>");
			}
			%>
			<form method="post">
				<label>ID: <input type="text" name="studentID"><br /></label> 
				<button type="submit">Delete</button>
			</form>
	<div>
		<button onclick="location.href='/WebApp/'">Back to
			main</button>
	</div>
</body>
</html>