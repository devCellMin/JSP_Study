<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%! 
	public String petEng2Kor(String pet){
		switch(pet) {
		case "cat": return "고양이";
		case "dog": return "개";
		case "fish": return "금붕어";
		case "": return "";
		default: return "몰?루";
		}
	}
%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
			#wrap {
				width: 500px;
				height: 500px;
				margin: 0 auto;
				margin-top: 20px;
			}
			#wrap>h2 {
				text-align: center;
			}
		</style>
	</head>
	<body>
		<div id="wrap">
			<h2>EL_Ex02 : ID &amp; Select Pet Result</h2>
			<hr>
			아이디 : ${param.userID}
			<br>선택한 동물 : &nbsp;
			${paramValues.Animal[0]}
			${paramValues.Animal[1]}
			${paramValues.Animal[2]}
		</div>
	</body>
</html>