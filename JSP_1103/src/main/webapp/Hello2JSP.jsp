<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	
	String name = "신민세", school="효성전문학교", department="AWS기반 풀스택 개발자 양성과정";

%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			h1, p {
				font-family: 맑은 고딕;
			}
			p{
				font-weight: bold;
			}
		</style>
	</head>
	<body>
		<h1>Self-Introduction</h1>
		<p>Name : <%=name %></p>
		<p>School : <%=school %></p>
		<p>Department : <%=department %></p>
	</body>
</html>