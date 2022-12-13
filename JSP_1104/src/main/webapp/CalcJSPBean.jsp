<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="calc" class="jspbook.CalcBean" />

<jsp:setProperty name="calc" property="*" />

<%
	calc.calculate();
%>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<div style="text-align: center;">
			<form method="post">
				<input type="text" name="num1" size=5>
				<select name="op">
					<option value="+"> + </option>
					<option value="-"> - </option>
					<option value="*"> * </option>
					<option value="/"> / </option>
				</select>
				<input type="text" name="num2" size=5>
				<input type="submit" name="submit" value="계산">
				<input type="reset" name="reset" value="취소">
			</form><br>
			계산결과 : <jsp:getProperty name="calc" property="result" />
			
		</div>
	</body>
</html>








