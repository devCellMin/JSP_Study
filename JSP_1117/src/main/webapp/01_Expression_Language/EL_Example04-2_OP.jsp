<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<div id="wrap">
			<h2>EL_EX04: OP RESULT</h2>
			<br>
			X : ${param.Num1}, Y : ${param.Num2}
			<br>
			<br>X + Y = ${param.Num1 + param.Num2}
			<br>X - Y = ${param.Num1 - param.Num2}
			<br>X * Y = ${param.Num1 * param.Num2}
			<br>X / Y = ${param.Num1 / param.Num2}
			<br>X % Y = ${param.Num1 % param.Num2}
			<br>
			<br>X가 더 큽니까? ${param.Num1 - param.Num2 > 0}
			<br>Y가 더 큽니까? ${param.Num1 - param.Num2 < 0}
			<br>
			<br>X와 Y가 모두 양수입니까? ${(param.Num1 > 0) && (param.Num2 > 0)}
			<br>
			<br>X와 Y가 같습니까? ${(param.Num1 == parma.Num2)? "예" : "아니오"}
			<br>${param.Num1}을 ${param.Num2}로 나눈 몫은? -> ${param.Num1 div param.Num2}
			<br>나머지는 ${param.Num1 mod param.Num2}
			<br>
			
			
			
		</div>
	</body>
</html>