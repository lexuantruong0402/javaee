<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Add new student</title>
</head>
<body>
	<div>
		<%
			// notify when student added
			if (request.getAttribute("data") != null) {
				out.println("<p>Student added!</p>");
			}
		%>
		<div>
			<div>
				<h2>Add Student</h2>
			</div>
			<form method="post">
						 <label>ID:      <input type="text" name="studentID"><br />
				</label> <label>Name:    <input type="text" name="name"><br />
				</label> <label>Born:    <input type="text" name="born"><br />
				</label> <label>Sex:     <input type="text" name="sex"><br />
				</label> <label>Date In: <input type="text" name="dateIn"><br />
				</label>

				<button type="submit">Submit</button>
			</form>
		</div>
		<div>
            <button onclick="location.href='/WebApp/'">Back to main</button>
        </div>
</body>
</html>