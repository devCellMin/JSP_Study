<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	footer.jsp에서 출력한 메세지 입니다.
	<hr>
	<span style="font-size: 20px; font-weight: bold;">
		표현식(Expression)으로 표현한 방법 <br>
		<%= request.getParameter("email") %>&nbsp;
		<%= request.getParameter("tel") %><br><br>
		
		스크립틀릿을 통하여 OUT 객체 사용 <br>
		<%
			int num = 300;
			out.print(request.getParameter("email"));
			out.print("&nbsp;&nbsp;");
			out.println(request.getParameter("tel"));
			out.println(String.format("<br>%d%s", num, "원"));
		%>
	</span>
</body>
</html>