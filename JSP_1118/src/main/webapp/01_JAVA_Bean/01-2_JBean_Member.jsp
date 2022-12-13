<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			#wrap {
				width: 500px;
				height: 300px;
				border: 1px solid black;
				margin: 30px auto 10px auto;
				text-align: center;
			}
			#wrap>h2 {
				font-size: 30px;
			}
			#userInfo {
				width: 250px;
				height: 250px;
				text-align: left;
				margin: 20px auto;
			}
		</style>
	</head>
	<body> 
		<div id="wrap">
			<h2>회원정보</h2>
			<div id=userInfo>
				<jsp:useBean id="memberInfo" class="JB_01.JB_01_Member" />
				<jsp:setProperty property="userName" name="memberInfo" param="userName"/>
				<jsp:setProperty property="userGender" name="memberInfo" param="userGender"/>
				<jsp:setProperty property="userAge" name="memberInfo" param="userAge"/>
				
				이름 : <jsp:getProperty property="userName" name="memberInfo"/><br>
				성별 : <jsp:getProperty property="userGender" name="memberInfo"/><br>
				나이 : <jsp:getProperty property="userAge" name="memberInfo"/><br>
			</div>
		</div>
	</body>
</html>