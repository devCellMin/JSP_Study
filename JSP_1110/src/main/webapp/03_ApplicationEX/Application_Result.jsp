<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>Application Result</h2>
		<hr><br>
		
		Application_EX.jsp에서 받은 값 : <%= application.getAttribute("userName") %><br>
		<%
			int count = Integer.parseInt(String.valueOf(application.getAttribute("count")));
			int cnt = count + 1;
			application.setAttribute("count", cnt);
		%>
		Count : <%= cnt %>
	</body>
</html>