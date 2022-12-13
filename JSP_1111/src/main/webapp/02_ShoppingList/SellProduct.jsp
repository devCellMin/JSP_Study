<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Scanner" %>
<%@ page import="java.io.File" %>
<% request.setCharacterEncoding("UTF-8");%>

<!DOCTYPE html>
<%
	String id = request.getParameter("userID");
	session.setAttribute("id", id);
	
	Scanner sc;
	Map<String, String> prodList = new HashMap<String, String>();
	try {
		sc = new Scanner(new File(application.getRealPath("/WEB-INF/DB/productList.csv")));
		
		for(int i=0;sc.hasNext();i++) {
			String data = sc.nextLine();
			if(i > 0) {
				String[] dataArr = data.split(",");
				prodList.put(dataArr[0], dataArr[1]);
			}
		}
	}catch(Exception e) {
		out.println(e.getMessage());
	} 
%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			*, html, body {margin: 0; padding: 0;}
			html, body {width: 100%; height: 100%;}
			
			#wrap {
				text-align: center;
				margin: 0 auto;
			}
			
			#wrap > h2 {
				font-size: 40px;
				padding: 20px 0 20px 0;
			}
			
			#selectForm {
				padding-top: 40px;
				padding-bottom: 50px;
			}
			
			#selectForm > span {
				font-size: 17px;
			}
			
			#selectForm > select {
				height: 25px;
			}
			
			#btnSelect {
				padding: 3px 5px;
			}
			
			#checkOut {
				text-decoration: none;
				border: 1px solid black;
				background-color: lightgray;
				padding: 3px 5px;
				color: black;
			}
			
		</style>
	</head>
	<body>
		<div id="wrap">
			<h2>Select Product</h2>
			<hr>
			<form method="post" action="AddSelected.jsp" id="selectForm" name="selectForm">
				<span>물품 : </span>
				<select name="selected">
					<option value="nothing">물품을 선택하여 주세요.</option>
					<%
						for(int i=0;i<prodList.size();i++) {%>
							<option value="<%=i+1 %>"><%=prodList.get(String.valueOf(i+1)) %></option>
						<%}
					%>
				</select>
				<input type="button" value="추가" id="btnSelect" onclick="formSubmit(this.form)">
			</form>
			
			<a href="CheckOut.jsp" id="checkOut">계산하기</a>
		</div>
		
		<script type="text/javascript">
			
			function formSubmit(f) {
				if(f.selected.value == "nothing") {
					alert('물품을 선택하여 주세요..');
					return;
				}
				if(confirm("상품을 추가하시겠습니까?")){
					f.submit();
				}
			}
		
		</script>
	</body>
</html>