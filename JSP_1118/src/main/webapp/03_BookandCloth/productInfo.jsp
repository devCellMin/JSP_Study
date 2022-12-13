<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<div id=prod_wrap>
			<jsp:useBean id="prodInfo" class="JB_03_Extend.Product" scope="request" />
			코드  : <jsp:getProperty property="prod_Code" name="prodInfo" /><br>
			제품명 : <jsp:getProperty property="prod_Name" name="prodInfo" /><br>
			가격  : <jsp:getProperty property="prod_Price" name="prodInfo" /><br>
		</div>
	</body>
</html>