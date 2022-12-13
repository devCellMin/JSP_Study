<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	int result = 0;
	
	if(request.getMethod().equals("POST"))
	{
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
		}
		
/*		if(op.equals("+"))
		{
			result = num1 + num2;
		}
		else if(op.equals("-"))
		{
			result = num1 - num2;
		}
		else if(op.equals("*"))
		{
			result = num1 * num2;
		}
		else if(op.equals("/"))
		{
			result = num1 / num2;
		}
*/
	}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body style="font-family: 맑은 고딕;text-align: center;">
		<h2 style="margin-top: 20px;">JSP를 활용한 계산기 프로그램</h2>
		<hr><br>
		<div style="margin: 0 auto; font-size: 20px; margin-bottom: 10px">계산결과 :<%=result %></div>
		<form name=JSP_Calc method=post>
			<input type="text" name="num1" size="5">
			<select name="operater">
				<option selected>+</option>
				<option>-</option>
				<option>*</option>
				<option>/</option>
			</select>
			<input type="text" name="num2" size="5">
			<br><br>
			<input type="submit" value="제출">
			<input type="reset" value="취소">
		</form>
	</body>
</html>





