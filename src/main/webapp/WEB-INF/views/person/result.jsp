<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>person\result.jsp</h1>
	name1 : ${name } <br><!-- model로 설정한 것은 이방법으로 -->
	name2 : ${requestScope.name }<br><!-- model로 설정한 것은 이방법으로 -->
	name3 : <%=request.getAttribute("name") %><br><!-- model로 설정한 것은 이방법으로 -->
	name4 : <%=request.getParameter("name") %><br> <!-- request 객체 자체적으로로 받음  -->
	name5 : ${param.name }<br> <!-- request 객체 자체적으로로 받음  -->
	<hr>
	age1 : ${age } <br><!-- model로 설정한 것은 이방법으로 -->
	age2 : ${requestScope.age }<br><!-- model로 설정한 것은 이방법으로 -->
	age3 : <%=request.getAttribute("age") %><br><!-- model로 설정한 것은 이방법으로 -->
	age4 : <%=request.getParameter("age") %><br><!-- request 객체 자체적으로로 받음  -->
	age5 : ${param.age }<br><!-- request 객체 자체적으로로 받음  -->
</body>
</html>