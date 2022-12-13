<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>Forward와 Response의 결과 발표창 입니다.</h2>
		이 름 : <%= request.getParameter("userName") %> <br>
		이메일 : <%= request.getParameter("userEmail") %> <br>
		번 호 : <%= request.getParameter("userTel") %>
	</body>
</html>