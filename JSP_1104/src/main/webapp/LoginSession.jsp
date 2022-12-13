<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body style="text-align: center;">
		<h2>개인 정보를 입력하세요</h2>
		<hr><br>
		
		<form action="agreement.jsp" method="post">
			아이디  : <input type="text" Name="ID"><br><br>
			비밀번호 : <input type="password" Name="PW"><br><br>
			이름    : <input type="text" Name="NAME"><br><br><br>
			<input type="submit" value="확인">
		</form>
		
	</body>
</html>