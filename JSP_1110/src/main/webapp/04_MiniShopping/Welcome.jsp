<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%!
			String greeting = "웹 쇼핑몰에 오신 것을 환영합니다.";
			String sayHello = "Welcome to Web Market!";
		%>
		<h1><span><%= greeting %></span></h1>
		<h3><span><%= sayHello %></span></h3>
		<span id="timeTag">
			<jsp:include page="Time.jsp" />
		</span>
	</body>
</html>