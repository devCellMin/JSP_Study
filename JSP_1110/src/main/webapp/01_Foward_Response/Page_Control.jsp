<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Chap 06 : Page_Control.jsp</title>
	</head>
	<body>
		<h2>Forward, SendRedirect 테스트</h2>
		<hr><br>
		
		<form method="post" action="forward_action.jsp">
			forward action : <input type="text" name="userName">
			<input type="submit" value="확인">
		</form>
		<br>
		<form action="response_sendRedirect.jsp">
			Response_sendRedirect : <input type="text" name="userName">
			<input type="submit" value="확인">
		</form>
		
	</body>
</html>