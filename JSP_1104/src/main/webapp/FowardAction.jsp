<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>FowardAction에서 출력된 값입니다.</h2>
		<hr>
		Fowart_Action의 모든 내용은 출력되지 않았습니다.<br>
		<%! int num = 10; %>
		<% out.println(num); %>
		<jsp:forward page="footer.jsp">
			<jsp:param value="test@test.net" name="email"/>
			<jsp:param value="000-000-0000" name="tel"/>
		</jsp:forward>
		<% out.println(num * 1000); %>
	</body>
</html>