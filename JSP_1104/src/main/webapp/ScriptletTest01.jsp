<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<div style="text-align: center; margin-top: 20px;">
			<h3>스크팁트릿 테스트(Scirptlet Test)</h3>
			<hr>
			<%
				out.println("<h3>내장각체 out을 활용</h3>");
				for(int i=1;i<11;i++)
				{
					out.println(i+"<br>"); // 내장객체 out을 활용하여 표시
				}
			%>
			
			<h3>표현식을 활용한 경우</h3>
			<%
				for(int i=1;i<11;i++)
				{%>
					<%=i %>
					<br>
				<%}
			%>
		</div>
	</body>
</html>