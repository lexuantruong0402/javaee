<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="entities.Student"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search</title>
</head>
<body>
	<div>
		<div>
			<div>
				<h2>Search Students</h2>
			</div>
			<form method="post">
				<label>ID: <input type="text" name="studentID"><br /></label> 
				<button type="submit">Submit</button>
			</form>
			<table border="1" width="500" align="center">
				<tr bgcolor="00FF7F">
					<th><b>Student Name</b></th>
					<th><b>Born</b></th>
					<th><b>Sex</b></th>
					<th><b>Date In</b></th>
				</tr>
			
			<%
			// write to table
			//data is student who find by ID
			if (request.getAttribute("data")!=null){
				Student s = (Student) request.getAttribute("data"); %>
				<tr>
					<td><%=s.getName()%></td> 
					<td><%=s.getBorn()%></td>
					<td><%=s.getSex()%></td>
					<td><%=s.getDateIn()%></td>
				</tr>
			<%}%>
			
			</table>
		</div>
	</div>

	<div>
		<button onclick="location.href='/WebApp/'">Back to
			main</button>
	</div>
</body>
</html>