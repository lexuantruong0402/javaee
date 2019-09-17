<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit</title>
</head>
<body>
	<div>
		<%
			// notify when student edited
			if (request.getAttribute("data") != null) {
				out.println("<p>Student edited!</p>");
			}
		%>
		<div>
			<div>
				<h2>Edit Student</h2>
			</div>
			<form method="post">
				<label>ID: <input type="text" name="studentID"><br />
				</label> <label>Name: <input type="text" name="name"><br />
				</label> <label>Born: <input type="text" name="born"><br />
				</label> <label>Sex: <input type="text" name="sex"><br />
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