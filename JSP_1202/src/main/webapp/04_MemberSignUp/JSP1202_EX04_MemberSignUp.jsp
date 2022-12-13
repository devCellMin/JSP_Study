<%@page import="java.awt.print.Printable"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			*{margin: 0;padding: 0;box-sizing: border-box;} 
        	#signUpForm {
        		margin: 0 auto;
        	}
        	#signUpForm>table {
        		margin: 40px auto 10px auto;
        		border-collapse: collapse;
        		border: 1px solid black;
        	}
        	#signUpForm>table tr>th,
        	#signUpForm>table tr>td {
        		border: 1px solid black;
        		text-align: center;
        	}
        	#signUpForm>table tr:not(:first-child)>th {
        		text-align: right;
        		padding: 5px 10px;
        	}
        	
        	#signUpForm>table tr>td>input[type=text] {
        		width: calc(100% - 10px);
        		height: 30px;
        		border: none;
        		padding: 0 5px
        	}
        	
        	#signUpForm>table tr>td>input[type=file] {
        		width: calc(100% - 10px);
        		height: 30px;
        		margin-top: 5px;
        	}
        	
        	#signUpForm>table tr:first-child>th, 
        	#signUpForm>table tr:last-child>td {
        		padding: 7px;
        	}
        	
        	#btnSignUp, input[type=reset] {
        		padding: 3px 10px;
        	}
		</style>
	</head>
	<body>
		<form id="signUpForm" method="post" action="appendMember.jsp">
			<table>
				<tr>
					<th colspan="2">회원가입</th>
				</tr>
				<tr>
					<th>이 름 :</th>
					<td><input type="text" id="userName" name="userName" ></td>
				</tr>
				<tr>
					<th>아이디 :</th>
					<td><input type="text" id="userID" name="userID" ></td>
				</tr>
				<tr>
					<th>비밀번호 :</th>
					<td><input type="text" id="userPassword" name="userPassword" ></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" id="btnSignUp" value="추가">
						<input type="reset" value="리셋">
					</td>
				</tr>
			</table>
		</form>
		
		<script type="text/javascript">
			window.onload = function() {
				userName.value = "";
				userName.value = "";
				userPassword.value = "";
				
				btnSignUp.onclick = function() {
					if(userName.value.trim().length == 0) {
						alert("이름을 입력하세요.");
						userName.value = "";
						return;
					}else if(userID.value.trim().length == 0) {
						alert("아이디를 입력하세요.");
						userID.value = "";
						return;
					}else if(userPassword.value.trim().length == 0) {
						alert("비밀번호를 입력하세요.");
						userPassword.value = "";
						return;
					}
					if(window.confirm("회원가입을 하시겠습니까?")) {
						signUpForm.submit();
					}
				}
			}
		</script>
	</body>
</html>





