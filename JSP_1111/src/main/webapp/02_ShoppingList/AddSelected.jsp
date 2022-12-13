<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.File" %>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>

<%
	request.setCharacterEncoding("UTF-8");
	String prodCode = request.getParameter("selected");
	ArrayList<String> selectedList = (ArrayList<String>)session.getAttribute("selectedList");
	if(selectedList == null) {
		selectedList = new ArrayList<String>();
	}
	selectedList.add(prodCode);
	session.setAttribute("selectedList", selectedList);
%>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script type="text/javascript">
			alert("물품등록이 완료되었습니다.");
			history.go(-1);
		</script>
	</head>
	<body>
	
	</body>
</html>