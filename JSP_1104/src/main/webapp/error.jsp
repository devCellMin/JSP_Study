<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page errorPage="error_OK.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Error Test</title>
	</head>
	<body>
		<h2>Error Test Page</h2>
		<hr>
		<%
			//String str = "100";
			String str = "test";
			int i = Integer.parseInt(str);
			// out, out 객체는 JSP 페이지가 생성한 결과를 웹 브라우저에 전송해 주는 출력 스트림
			out.println(i + "<br>");
			out.println(str.toString()+"**<br>");
		%>
	</body>
</html>