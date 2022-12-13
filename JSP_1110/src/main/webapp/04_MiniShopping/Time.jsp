<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Calendar" %>
<%@ page import = "java.util.Date" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			Date day = new Date();
			String am_pm;
			
			int hour = day.getHours();
			int minute = day.getMinutes();
			int second = day.getSeconds();
			
			if(hour/12 == 0) {
				am_pm = "AM";
			} else {
				am_pm = "PM";
				hour -= 12;
			}
			String cTime = String.format("%d : %02d : %02d %s", hour, minute, second, am_pm); 
			out.println("현재 접속 시각 :&emsp;"+cTime+"\n");
		%>
	</body>
</html>