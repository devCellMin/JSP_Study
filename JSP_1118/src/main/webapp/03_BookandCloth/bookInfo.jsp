<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="prodInfo" class="JB_03_Extend.BookInfo" scope="request" />
<jsp:setProperty property="prod_Code" name="prodInfo" value="50001"/>
<jsp:setProperty property="prod_Name" name="prodInfo" value="의뢰인"/>
<jsp:setProperty property="prod_Price" name="prodInfo" value="9000"/>
<jsp:setProperty property="book_Writer" name="prodInfo" value="존 그리싱"/>
<jsp:setProperty property="book_Page" name="prodInfo" value="704"/>
<%-- 상속을 받았으므로, 이후 부모의 내용을 받으려면, name이 동일해야 한다. --%>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="Main.css">
	</head>
	<body>
		<div id="wrap">
			<h2>책정보가 저장되었습니다</h2>
			<hr>
			<h3>재품 개략 정보</h3>		
			<jsp:include page="productInfo.jsp" />
		</div>
	</body>
</html>