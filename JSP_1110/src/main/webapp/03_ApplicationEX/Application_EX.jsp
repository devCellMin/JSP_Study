<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body style="text-align: center;">
		<div style="width: 500px; margin: 0 auto;text-align: left;">
			<h2 align="center">Application Test</h2>
			<hr>
			1. 서버정보 : <%= application.getServerInfo() %> <br>
			2. 서블릿 API : <%= application.getMajorVersion() + "." + application.getMinorVersion() %> <br>
			3. Application_EX.jsp 파일의 실제경로 :
			<p style="width: 480px; margin-left:20px;word-break: break-all;">
				<%= application.getRealPath("Application_EX.jsp") %>
			</p><br>
			<hr>
			<p>setAttribute로 userName변수에 "홍길동" 설정</p>
			<%
				application.setAttribute("userName", "홍길동");
				application.log("userName=홍길동");
				application.setAttribute("count", 1);
			%> 
			<a href="Application_Result.jsp">확인하기</a>
		</div>
	</body>
</html>