<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>

<%
	String msg = request.getParameter("twitMsg");
	String id = (String)session.getAttribute("id");
	session.setAttribute("id", id);

	ArrayList<String> msgs = (ArrayList<String>)application.getAttribute("msgs");
	
	if(msgs == null) {
		msgs = new ArrayList<String>();
		application.setAttribute("msgs", msgs);
	}
	
	Date today = new Date();
	Locale currentLocale = new Locale("KOREAN", "KOREA");
	String pattern = "yyyy-MM-dd / 	HH:mm:ss"; //hhmmss로 시간,분,초만 뽑기도 가능
	SimpleDateFormat formatter = new SimpleDateFormat(pattern, currentLocale);
	String time = formatter.format(today);
	
	msgs.add(id + " :: " + msg + " , " + time);
	
	application.log(msg+"추가됨");
	
	response.sendRedirect("TwitterChat.jsp");
%>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	
	</body>
</html>