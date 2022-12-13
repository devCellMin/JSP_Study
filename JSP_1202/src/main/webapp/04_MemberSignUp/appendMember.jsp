<%@page import="model.MemberDao"%>
<%@page import="model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원추가</title>
		<style type="text/css">
			*, html, body {margin: 0;padding: 0;box-sizing: border-box;}
			.result {
				width: 300px;
				height: 200px;
				margin: 40px auto 10px auto;
				text-align: center;
				font-size: 20px;
			}
			
			.result>h3 {
				font-size: 30px;
				margin-bottom: 10px;
			}
			
			.result>input[type=button]{
				margin-top: 20px;
				font-size: 17px;
				padding: 3px 10px;
			}
		
		</style>
	</head>
	<body>
		<%
			// Member.java와 MemberDao.java와 설정
			request.setCharacterEncoding("UTF-8");
			MemberDao memberdb = new MemberDao().getInstance();
			Member member = new Member();
			member.setUserName(request.getParameter("userName"));
			member.setUserId(request.getParameter("userID"));
			member.setUserPassword(request.getParameter("userPassword"));
			
			if(memberdb.isExistID(member)) { %>
			<script>
				alert("이미 존재하는 아이디 입니다.");
				window.history.back();
			</script>
		<%	} else if(memberdb.insertMember(member)) { %>
				<div class="result">
					<h3>회원가입 성공!</h3>
					회원가입을 축하드립니다~!<br>
					<input type="button" id="btn2Index" value="처음으로">
				</div>
		<%	} else { %>
				<div class="result">
					<h3>회원가입 실패!</h3>
					관리자에게 문의하세요.<br>
					<input type="button" id="btn2Index" value="처음으로">
				</div>
			
		<%	} %>
			
		<script type="text/javascript">
			window.onload = function() {
				btn2Index.onclick = function() {
					window.location.href = "../04_MemberSignUp/JSP1202_EX04_MemberSignUp.jsp";
				}
			}
		</script>
		
	</body>
</html>