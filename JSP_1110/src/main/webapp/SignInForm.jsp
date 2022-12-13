<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			#wrap {
				margin: 0 auto;
				text-align: center;
			}
			#regform {
				margin: 0 auto;
				width: 400px;
				text-align: left;
				border: 1px solid black;
				padding: 10px;
				padding-left: 40px;
				border-radius: 50px;
				background-color: orange;
			}
			#btnSignUp {
				padding: 2px 5px;
				margin-top: 10px;
			}
			#result {
				margin: 0 auto;
				width: 400px;
				text-align: left;
				border: 1px solid black;
				padding: 10px;
				padding-left: 40px;
				border-radius: 50px;
			}
		</style>
	</head>
	<body>
		<div id="wrap">
			<h2>회원 가입</h2>
			<hr><br>
			<div id="regform">
				<form action="" name="formSignIn">
					<label>이름</label><br>
					<input type="text" name="userName" size="40"><br style="padding: 5px;">
					<hr>
					<label style="margin-top: 10px;">이메일</label><br>
					<input type="text" name="userEmail" size="40"><br>
					<button type="button" onclick="signUp()" id="btnSignUp">가입</button>
				</form>
			</div>
			<div id="result">
				<h3>가입정보</h3>
				<hr>
				이 름 : <span id="showName"></span><br>
				이메일 : <span id="showEmail"></span><br>
			</div>
		</div>
		
		<script>
			
			document.getElementById("result").style.display = "none";
		
			function signUp() {
				let signTF = confirm("정말로 가입하시겠습니까?");
				if(signTF) {
					document.getElementById("regform").style.display = "none";
					document.getElementById("showName").innerHTML = document.formSignIn.userName.value;
					document.getElementById("showEmail").innerHTML = document.formSignIn.userEmail.value;
					document.getElementById("result").setAttribute("style", "display: block; background-color: KhaKi;");
				}
			}
		</script>
	</body>
</html>