<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP 종합 예제</title>
	</head>
	<body>
		<h2>JSP 종합 예제</h2>
		<hr>
		
		<%!
			String[] members = {"김길동", "홍길동", "김사랑", "박사랑"};
			int num1 = 10;
			
			int Calc(int num2)
			{
				return num1 + num2;
			}
		%>
		
		<h3>
			1. JSP 주석
			<!-- HTML 주석 : 화면에서는 안보이고, 소스 보기에는 보인다. -->
			<%-- JSP 주석 : 화면과 소스 보기에서 보이지 않음 --%>
		</h3>
		
		<h3>
			2. Calc(10) 메서드 실행 결과: 
			<%=Calc(10) %>
		</h3><hr>
		
		<%@ include file="Hello2JSP.jsp" %><hr>
		
		<h3>3. For - Each Loop 사용방법</h3>
		<ul style="list-style: none;">
			<%
				for(String member : members)
				{%>
					<li style="font-weight: bold;font-size: 20px;">
						Name : <%=member %>
					</li>
				<%}
			%>
		</ul><hr>
		
		
		
		
	</body>
</html>





