<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			* {margin: 0; padding: 0;}
			html, body {width: 100%; height: 100%;}
			#wrap {
				width: 100%;
				height: 100%;
				background-image: url("../image/background.png");
				background-size: cover;
			}
			header {
				width: 100%;
				background-color: #020715;
			}
			header > div {
				width: 1280px;
				padding: 20px 15px;
				margin: 0 auto;
			}
			header > div > a {
				text-decoration: none;
				color: white;
				font-size: 20px;
				font-weight: bold;
			}
			h1 {
				width: 100%;
				text-align: center;
				padding: 80px 0 100px 0;
				background-color: rgba(224, 224, 224, 0.7);
			}
			h1 > span {
				font-size : 70px;
				font-weight: lighter;
			}
			h3 {
				width: 100%;
				text-align: center;
				padding: 40px 0 15px 0;
			}
			h3 > span {
				font-size: 40px;
			}
			#mainpart {
				text-align: center;
			}
			#timeTag {
				font-size: 20px;
			}
			footer {
				text-align: center;
				padding: 50px 0 10px 0;
			}
			footer > span {
				font-size: 18px;
			}
		</style>
	</head>
	<body>
		<div id="wrap">
			<header>
				<div><a href="Main.jsp">Home</a></div>
			</header>
			<div id="mainpart">
				<jsp:include page="Welcome.jsp" />
			</div>
			<footer>
				<jsp:include page="footer.jsp" />
			</footer>
		</div>
	</body>
</html>