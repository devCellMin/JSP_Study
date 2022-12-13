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
			
			<br>${PRODUCT.prod_Name}
			<br>${PRODUCT.prod_Price}
			
		</div>
	</body>
</html>