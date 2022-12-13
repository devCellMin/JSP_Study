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
			<h3>우승자 명단</h3>
			<hr>
			1등. ${WINNERS[0]}
			2등. ${WINNERS[1]}
			3등. ${WINNERS[2]}
<%--			
			<% int count = (Integer)request.getAttribute("COUNT");			
				for(int i=0;i < count ;i++) { %>
					<br>${WINNERS[i]}
					<% out.println("<br>"+i); %>
			<% }%>
--%>
		</div>
		
	</body>
</html>