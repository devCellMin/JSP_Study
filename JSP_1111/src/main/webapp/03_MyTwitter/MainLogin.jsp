<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>MyLittleTwitter</title>
		<style type="text/css">
			*, html, body {margin: 0;padding: 0;}
			html, body {width: 100%; height: 100%;}
			
			#wrap {
				border: 1px solid black;
				text-align: center;
				margin: 0 auto;
				margin-top: 50px;
				width: 700px;
				height: 500px;
				background-color: skyblue;
			}
			
			#wrap h2 {
				padding-top: 30px;
			}
			
			#wrap img {
				width: 60%;
				margin: 0 auto;
				margin-top: 5%;
				margin-bottom: 5%;
			}
			
			#wrap input[type=text] {
				height: 23px;
			}
			
			#wrap input[type=button] {
				padding: 3px 5px;
				font-size: 13px;
			}
			
			#twitForm {
				margin-top: 10px;
			}
		</style>
	</head>
	<body>
		<div id="wrap">
			<h2>My Little Twitter</h2>
			<div><img alt="logo" src="./img/twitterlogo.jpg"></div>
			<form action="TwitterChat.jsp" id="twitForm">
				<input type="text" id="userID" name="userID">
				<input type="button" value="로그인" onclick="twitSubmit(this.form)">
			</form>
		</div>
		
		<script type="text/javascript">
			function twitSubmit(f) {
				if(f.userID.value.length == 0) {
					alert('아이디를 입력하여 주세요.');
					return;
				}
				f.submit();
			}
		</script>
		
	</body>
</html>






