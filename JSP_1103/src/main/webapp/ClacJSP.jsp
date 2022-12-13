<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	long result = 0;
	
	String op = request.getParameter("operater");

	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	
	switch(op)
	{
	case "+":
		result = num1 + num2;
		break;
	case "-":
		result = num1 - num2;
		break;
	case "*":
		result = num1 * num2;
		break;
	case "/":
		result = num1 / num2;
		break;
	default:
		result = -404;
		break;
	}
%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body style="text-align: center;">
		<h2 style="margin-top: 20px">JSP 계산기 2(HTML + JSP)</h2>
		<hr><br>
		
		<span style="font-size: 18px; margin-bottom: 10px;">
			계산결과 : <%=result %>
		</span>
		<br>
		<input type="button" value=" 뒤로가기 " onclick='location.href="CalcForm.html"'
		style="padding: 5px 10px; font-size: 15px; margin-top: 15px;">
	</body>
</html>