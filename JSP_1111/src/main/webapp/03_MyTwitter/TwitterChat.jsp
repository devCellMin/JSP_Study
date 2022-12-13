<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
	String id;
	if(session.getAttribute("id") == null) {
		id = request.getParameter("userID");
		session.setAttribute("id", id);
	} else {
		id = (String)session.getAttribute("id");
	}
	
%>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			*, html, body {margin: 0;padding: 0;}
			html, body {width: 100%; height: 100%;}
			
			#wrap {
				text-align: center;
				margin: 0 auto;
			}
			
			#wrap h2 {
				padding: 30px;
				font-size: 30px;
			}
			
			#wrap hr {
				margin-bottom: 30px;
			}
			
			#wrap span {
				font-size: 20px;
				margin-right: 10px;
			}
			
			#wrap input[type=text] {
				width: 250px;
				height: 23px;
			}
			
			#wrap input[type=button] {
				padding: 3px 5px;
				font-size: 13px;
			}
			
			#twitForm {
				margin-top: 10px;
			}
			
			#chattbox {
				margin: 0 auto;
				margin-top: 70px;
				width: 60%;
				text-align: left;
				font-size: 20px;
				font-weight: lighter;
			}
			
		</style>
	</head>
	<body>
		<div id="wrap">
			<h2>My Little Twitter</h2>
			<hr>
			<form action="twit.jsp" id="twitForm">
				<span>@<%=id %></span>
				<input type="text" id="twitMsg" name="twitMsg">
				<input type="button" value="보내기" onclick="msgSubmit(this.form)">
			</form>
			
			<div id="chattbox">
				<ul>
					<%
						ArrayList<String> msgs = (ArrayList<String>)application.getAttribute("msgs");
						// msgs가 null이 아닌 경우에만 목록 출력
						if(msgs != null) {
							for(String msg: msgs) {
								out.println("<li>"+msg+"</li>");
							}
						}
					%>
				</ul>
			</div>
		</div>
		
		<script type="text/javascript">
			function msgSubmit(f) {
				if(f.twitMsg.value.length == 0) {
					alert('채팅을 입력하여 주세요.');
					return;
				} else {
					f.submit();
				}
			}
		</script>
	</body>
</html>








