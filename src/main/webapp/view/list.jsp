<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="entities.Student"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Student List</title>
</head>
<body>
	<div>
		<div>
			<div>
				<h2>All Students</h2>
			</div>
			<table border="1" width="500" align="center">
				<tr bgcolor="00FF7F">
					<th><b>Student Name</b></th>
					<th><b>Born</b></th>
					<th><b>Sex</b></th>
					<th><b>Date In</b></th>
				</tr>
			
			<%
			//get all student from servlet List.
				Map<String, Student> allStudent = (Map<String, Student>) request.getAttribute("data");
			%>
			<%
				// write it to table
				for (Map.Entry<String, Student> s : allStudent.entrySet()) {
			%>
			<tr>
				<td><%=s.getValue().getName()%></td> 
				<td><%=s.getValue().getBorn()%></td>
				<td><%=s.getValue().getSex()%></td>
				<td><%=s.getValue().getDateIn()%></td>
			</tr>
			<%
				}
			%>
			</table>
		</div>
	</div>

	<div>
		<button onclick="location.href='/WebApp/'">Back to main</button>
	</div>
</body>
</html>