<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("UTF-8");
	String userName = request.getParameter("userName");
	String javaScore = request.getParameter("javaScore");
	String cLangScore = request.getParameter("cLangScore");
	String cppLangScore = request.getParameter("cppLangScore");
	String csLangScore = request.getParameter("csLangScore");
	String pyLangScore = request.getParameter("pyLangScore");
	
	String result;
	double avgScore, gradeScore;
	
	avgScore = (Integer.parseInt(javaScore) + Integer.parseInt(cLangScore)
			+ Integer.parseInt(cppLangScore) + Integer.parseInt(csLangScore)
			+ Integer.parseInt(pyLangScore)) / 5.0;
	result = String.format("%.2f", avgScore);
	
%>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			* {margin: 0; padding: 0;}
			html, body {width: 100%; height: 100%;}
			
			#wrap {
				width: 400px;
				height: 500px;
				text-align: center;
				margin: 0 auto;
				margin-top: 25px;
				padding-top : 20px;
				border: 1px solid black;
			}
			
			#getscore {
				width: 90%;
				border: 1px solid black;
				margin: 0 auto;
				margin-top: 25px;
				border-collapse: collapse;
			}
			
			#getscore tr th,
			#getscore tr td {
				border: 1px solid black;
				padding: 10px 15px;
			}
			
			#getscore tr td {
				width: 200px;
				padding: 0;
				font-size: 30px;
				text-align: center;
			}
			
			#btnSubmit {
				width: 90%;
				padding: 3px 5px;
				font-size: 17px;
				position: relative;
				top: 170px;
			}
			
		</style>
	</head>
	<body>
		<div id="wrap">
			<h2>성적계산프로그램 결과</h2>
			<table id="getscore">
				<tr>
					<th>이름</th>
					<td>
						<%= userName %>
					</td>
				</tr>
				<tr>
					<th>JAVA</th>
					<td>
						<%= javaScore %>
					</td>
				</tr>
				<tr>
					<th>C언어</th>
					<td>
						<%= cLangScore %>
					</td>
				</tr>
				<tr>
					<th>C++</th>
					<td>
						<%= cppLangScore %>
					</td>
				</tr>
				<tr>
					<th>C#</th>
					<td>
						<%= csLangScore %>
					</td>
				</tr>
				<tr>
					<th>PYTHON</th>
					<td>
						<%= pyLangScore %>
					</td>
				</tr>
				<tr>
					<th>종합성적 평균</th>
					<td>
						<%= result %>
					</td>
				</tr>
			</table>
		</div>
	</body>
</html>