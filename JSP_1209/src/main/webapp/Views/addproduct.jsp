<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	:root {
		--bgcolor: #020715;
		--text_color : #FFFFFF;
		--pageTitle_bgcolor : lightgray;
		--product_border: lightgray;
	}
	*, html, body {margin: 0;padding: 0; box-sizing: border-box;}
	html, body {width: 100%; height: 100%;}
	a {color: #000000; text-decoration: none; cursor: pointer;}
	
	.pageTitle {
		width: 100%;
		background-color: var(--pageTitle_bgcolor);
		text-align: center;
	}
	.pageTitle > p {
		width: 100%;
		display: block;
		margin: 0 auto;
		padding: 70px 0;
		font-size: 60px;
		white-space: pre-line;
	}
	
	#add_prod {
		width: 100%;
	}
	
	#add_prod>table{
		margin: 0 auto;
	}
	
	#add_prod>table tr>th,
	#add_prod>table tr>td {
		padding: 10px;
	}
	#productId, #pname, #unitprice, #manufacturer, 
	#category, #unitsInStock, #condition {
		width: 100%;
		height: 40px;
		padding: 5px;
	}
	
	#description {
		width: 100%;
		height: 50px;
		padding: 5px;
		resize: none;
	}
</style>
</head>
<body>
	<%@ include file="./header.jsp" %>
	
	<div class = "pageTitle">
		<p>상품추가</p>
	</div>
	
	<form id="add_prod">
		<table>
			<colgroup>
				<col width="150px">
				<col width="300px">
			</colgroup>
			<tr>
				<th>
					상품 코드
				</th>
				<td>
					<input type="text" id="productId" name="productId">
				</td>
			</tr>
			<tr>
				<th>
					상품명
				</th>
				<td>
					<input type="text" id="pname" name="pname">
				</td>
			</tr>
			<tr>
				<th>
					가격
				</th>
				<td>
					<input type="text" id="unitprice" name="unitprice">
				</td>
			</tr>
			<tr>
				<th>
					상세정보
				</th>
				<td>
					<textarea id="description" name="description"></textarea>
				</td>
			</tr>
			<tr>
				<th>
					제조사
				</th>
				<td>
					<input type="text" id="manufacturer" name="manufacturer">
				</td>
			</tr>
			<tr>
				<th>
					분류
				</th>
				<td>
					<input type="text" id="category" name="category">
				</td>
			</tr>
			<tr>
				<th>
					재고 수
				</th>
				<td>
					<input type="text" id="unitsInStock" name="unitsInStock">
				</td>
			</tr>
			<tr>
				<th>
					상태
				</th>
				<td>
					<input type="text" id="condition" name="condition">
				</td>
			</tr>
			<tr>
				<th>
					이미지
				</th>
				<td>
					<input type="file" id="filename" name="filename" multiple="multiple">
				</td>
			</tr>
			<tr>
				<td colspan=2>
					<input type="reset" class="btnReset" value="다시입력">
					<input type="button" id="btnAddProd" value="상품등록">
				</td>
			</tr>
		</table>
	</form>
	
	<%@ include file="./footer.jsp" %>
</body>
</html>