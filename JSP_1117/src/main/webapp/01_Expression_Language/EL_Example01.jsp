<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	int sum = 0;
	for(int cnt = 1; cnt <= 100; cnt++) {sum += cnt;}
	
	// // 일반적인 Expression을 사용한 경우
	// request.setAttribute("RESULT", new Integer(sum));
	
	// Expression Language를 사용한 경우
	pageContext.setAttribute("RESULT", new Integer(sum));
%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%--
			<!-- 일반적인 Expression을 사용한 경우 --> 
			1부터 100까지 더한 결과는? <%= request.getAttribute("RESULT") %> 
		--%>
		1부터 100까지 더한 결과는? ${RESULT}
	</body>
</html>