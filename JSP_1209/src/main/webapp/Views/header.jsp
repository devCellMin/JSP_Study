<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	ul {list-style: none;display: flex;}
	header {
		width: 100%;
		background-color: var(--bgcolor);
	}
	#header_wrap {
		width: 1280px;
		margin: 0 auto;
		display: flex;
		justify-content: flex-start;
	}
	#header_wrap a {
		display: block;
		padding: 20px 30px;
		color: var(--text_color);
		font-size: 20px;
	}
</style>
</head>
<body>
	<header>
		<div id="header_wrap">
			<a href="./index.jsp">Home</a>
			<ul>
				<li><a href="./productlist.jsp">Product</a></li>
				<li><a href="./addproduct.jsp">Add Product</a></li>
			</ul>
		</div>
	</header>
</body>
</html>