<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Include Test</title>
	</head>
	<body>
		<h2>Include 지시어 Test</h2>
		<hr>
		<%@ include file="menu.jsp" %>
		<p>
			테이블 사용 Include Test
			<table cellspacing=0 cellpadding=5 style="border: 1px solid black;">
				<tr>
					<td style="font-size: -1;"><%@ include file="news.jsp" %></td>
					<td style="width: 20px">&nbsp;</td>
					<td style="font-size: -1;"><%@ include file="shopping.jsp" %></td>
				</tr>
			</table>
		</p>
		<p>
			DIV 사용 Include Test
			<div style="border: 1px solid black; display: flex;">
					<div style="font-size: -1;"><%@ include file="news.jsp" %></div>
					<div style="width: 30px">&nbsp;</div>
					<div style="font-size: -1;"><%@ include file="shopping.jsp" %></div>
			</div>
		</p>
	</body>
</html>