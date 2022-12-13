<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("ID");
	String pwd = request.getParameter("PW");
	String name = request.getParameter("NAME");
	
	session.setAttribute("ID", id);
	session.setAttribute("PASSWORD", pwd);
	session.setAttribute("NAME", name);
%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body style="text-align: center;">
		<h3>약관</h3>
		<hr>
		<br> 1. 회원 정보는 웹 사이트의 운녕을 위해서만 사옹됩니다.
		<br> 2. 웹 사이트의 정상 운영을 방해하는 회원은 탈퇴 처리합니다.
		<hr><br>
		
		<form action="Subscribe.jsp">
			위의 약관에 동의하십니까?
			<input type="radio" name="AGREE" value="Yes">동의함
			<input type="radio" name="AGREE" value="No">동의하지 않음 
			<br><br>
			<input type="submit" value="확인">
		</form>
		
	</body>
</html>