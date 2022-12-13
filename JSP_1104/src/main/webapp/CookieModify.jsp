<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	response.addCookie(new Cookie("AGE", "17"));
%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		AGE 쿠키에 새로운 값이 저장되었습니다.
	</body>
</html>