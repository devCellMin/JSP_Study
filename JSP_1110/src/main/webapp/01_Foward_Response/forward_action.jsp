<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h3>Forward Action 연습</h3>
		<hr>
		
		<% int number = 10;String Name = request.getParameter("userName"); %>
		<%= number += 10 %> <br>
		
		<jsp:forward page="page_Control_END.jsp">
			<jsp:param value="<%= Name %>" name="userName"/>
			<jsp:param value="test@test.com" name="userEmail"/>
			<jsp:param value="000-0000-0000" name="userTel"/>
		</jsp:forward>
		
		<%= number *= 100 %>
	</body>
</html>