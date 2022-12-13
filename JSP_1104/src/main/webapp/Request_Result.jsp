<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Request_Result</title>
		<style type="text/css">
			table {border: 1px solid black; margin: 0 auto;}
			th, td {border: 1px solid black; padding: 5px; border-spacing: 1px;}
			#RR2 {border: none;}
			#RR2 tr, #RR2 tr td {border: none;}
		</style>
	</head>
	<body>
		<div style="text-align: center">
			<h2>Request Test Form</h2>
			<hr>
			<table>
				<tr>
					<td>이름</td>
					<td><%=request.getParameter("userName") %></td>
				</tr>
				<tr>
					<td>직업</td>
					<td><%=request.getParameter("userJob") %></td>
				</tr>
				<tr>
					<td>관심분야</td>
					<td>
						<%
							String[] favorites = request.getParameterValues("Favorite");
							
							for(String favorite : favorites)
							{
								out.println(favorite+"<br>");
							}
						%>
					</td>
				</tr>
			</table>
			<h2>Request_Result2</h2>
			<table id="RR2">
				<tr>
					<td>
						1. 클라이언트 IP 주소 : <%=request.getRemoteAddr() %> <br>
						2. 요청 메소드 : <%=request.getMethod() %><br>
						<%
							Cookie[] cookies = request.getCookies();
						%>
						3. <%=cookies[0].getName() %>쿠키값 : <%=cookies[0].getValue() %><br>
						4. 프로토콜 : <%= request.getProtocol() %>
					</td>
				</tr>
			</table>
		</div>
	</body>
</html>