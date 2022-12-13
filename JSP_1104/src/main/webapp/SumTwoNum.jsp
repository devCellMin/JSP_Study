<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	int num1 = 0, num2 = 0, result = 0;
	
	try
	{
		String str1 = request.getParameter("Num1");
		String str2 = request.getParameter("Num2");
		num1 = Integer.parseInt(str1);
		num2 = Integer.parseInt(str2);
		result = num1 + num2;
	}
	catch(NumberFormatException e)
	{
		RequestDispatcher dispatcher = request.getRequestDispatcher("dataError.jsp");
		dispatcher.forward(request, response);
	}
%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<div style="text-align: center">
			<form action="" method="post">
				<input type="text" name="Num1" size=5>
				<input type="text" name="Num2" size=5>
				<input type="submit" value="더하기">
				<input type="reset" value="취소">
			</form><br>
			계산결과 : <%=result %>
		</div>
	</body>
</html>





