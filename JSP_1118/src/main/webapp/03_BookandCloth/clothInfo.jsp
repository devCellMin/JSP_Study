<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="prodInfo" class="JB_03_Extend.ClothInfo" scope="request" />
<jsp:setProperty property="prod_Code" name="prodInfo" value="30002"/>
<jsp:setProperty property="prod_Name" name="prodInfo" value="애플-진"/>
<jsp:setProperty property="prod_Price" name="prodInfo" value="9000000"/>
<jsp:setProperty property="cloth_Color" name="prodInfo" value="블랙"/>
<jsp:setProperty property="cloth_Size" name="prodInfo" value="46"/>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="Main.css">
	</head>
	<body>
		<div id="wrap">
			<h2>의상정보가 저장되었습니다</h2>
			<hr>
			<h3>재품 개략 정보</h3>		
			<jsp:include page="productInfo.jsp" />
		</div>
	</body>
</html>