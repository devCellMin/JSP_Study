<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="JB_02_Calc.JB_CalcBean"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			#wrap {
				width: 300px;
				height: 200px;
				border: 1px solid black;
				margin: 30px auto 0 auto;
				text-align: center;
			}
			#wrap>h2 {
				padding: 10px 0;
			}
			#wrap>div {
				margin-top: 10px;
				width: 100%;
				height: 50px;
			}
		</style>
	</head>
	<body>
		<jsp:useBean id="calc" class="JB_02_Calc.JB_CalcBean" />
		<jsp:setProperty property="*" name="calc"/>
	
		<div id="wrap">
			<h2>Calculator with JavaBean</h2>
			<span>JB_CalcBean Result</span>
			<div>
				계산결과 : ${calc.calculate()}
			</div>
		</div>
	</body>
</html>