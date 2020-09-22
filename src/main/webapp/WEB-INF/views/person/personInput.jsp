<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>person\personInput.jsp</h1>
	<form action="person/join4" method="post">
		<table border="1">
			<tr>
				<td>ID</td>
				<td>
					<input type="text" name="id"/>
				</td>
			</tr>
			<tr>
				<td>PW</td>
				<td>
					<input type="text" name="pw"/>
				</td>
			</tr>
			<tr>
				<td>NAME</td>
				<td>
					<input type="text" name="name"/>
				</td>
			</tr>
			<tr>
				<td>ADDR</td>
				<td>
					<input type="text" name="addr"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="전송"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>