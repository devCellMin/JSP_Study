<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.util.Scanner" %>
<%@ page import="java.io.File" %>
<!DOCTYPE html>

<%
	ArrayList selectedList = (ArrayList)session.getAttribute("selectedList");

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
		<title>CheckOut.jsp</title>
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
			
			#wrap > span {
				font-size: 20px;
			}
			
		</style>
	</head>
	<body>
		<div id="wrap">
			<h2>Check Out Product</h2>
			<hr><br>
			<h1>장바구니 내역</h1>
			<br>
			<span>
				<%
					for(int i=0;i<selectedList.size();i++) {
						out.println(prodList.get(selectedList.get(i))+"<br>");
					}
				%>
			</span>
		</div>
		
		<script type="text/javascript">
			<%
				if(selectedList.size() == 0) {
					%>alert("선택하신 상품이 없습니다.");<%
					response.sendRedirect("SellProduct.jsp");
				}
			%>
		</script>
	</body>
</html>