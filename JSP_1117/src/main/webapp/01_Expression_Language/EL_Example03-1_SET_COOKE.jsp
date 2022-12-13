<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	Cookie name = new Cookie("NAME", "John");
	response.addCookie(name);
	Cookie gender = new Cookie("GENDER", "Male");
	response.addCookie(gender);
	Cookie age = new Cookie("AGE", "15");
	response.addCookie(age);
%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body style="text-align: center;">
		<h2 style="margin-top: 20px;">
			쿠키 데이터가 저장되었습니다.
		</h2>
		<input type="button" value="확인" onclick='location.href="EL_Example03-2_COOKIE.jsp"'>
	</body>
</html>