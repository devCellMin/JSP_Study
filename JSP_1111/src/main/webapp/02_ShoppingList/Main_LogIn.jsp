<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Shopping List</title>
		<style>
			*, html, body {margin: 0; padding: 0;}
			html, body {width: 100%; height: 100%;}
			
			#wrap {
				text-align: center;
				margin: 0 auto;
			}
			
			#wrap > h2 {
				font-size: 40px;
				padding: 20px 0 20px 0;
			}
			
			#signForm {
				padding-top: 40px;
			}
			
			#signForm > span {
				font-size: 17px;
			}
			
			#signForm > input[type=text] {
				height: 20px;
			}
			
			#btnSubmit {
				padding: 3px 5px;
			}
			
		</style>
	</head>
	<body>
		<div id="wrap">
			<h2>LogIn</h2>
			<hr>
			<form method="post" action="SellProduct.jsp" id="signForm" name="signForm">
				<span>아이디 : </span>
				<input type="text" name="userID">
				<input type="button" value="Submit" id="btnSubmit" onclick="formSubmit(this.form)">
			</form>
		</div>
		
		<script type="text/javascript">
			
			function formSubmit(f) {
				if(f.userID.value.length == 0) {
					alert('아이디를 입력하세요.');
					return;
				}
				f.submit();
			}
		
		</script>
	</body>
</html>