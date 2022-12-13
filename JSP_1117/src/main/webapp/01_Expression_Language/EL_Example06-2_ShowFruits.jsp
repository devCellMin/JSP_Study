<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			#wrap {
				text-align: center;
				margin: 30px auto 10px auto;
			}
		</style>
	</head>
	<body>
		<div id="wrap">
			<h3>이 달에 가장 많이 팔린 과일입니다.</h3>
			<hr>
			1위. ${FRUITS[0]}<br>
			2위. ${FRUITS[1]}<br>
			3위. ${FRUITS[2]}<br>
			<br>
			
		</div>
	</body>
</html>