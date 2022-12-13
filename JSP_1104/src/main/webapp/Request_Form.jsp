<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Request_Form</title>
		<style type="text/css">
			table {border: 1px solid black; margin: 0 auto;}
			th, td {border: 1px solid black; padding: 5px; border-spacing: 1px;}
		</style>
	</head>
	<body>
		<div style="text-align: center">
			<h2>Request Test Form</h2>
			<hr>
			<form name="form1" method="post" action="Request_Result.jsp">
				<table>
					<tr>
						<td>이름</td>
						<td><input type="text" size=10 name="userName"></td>
					</tr>
					<tr>
						<td>직업</td>
						<td>
							<select name="userJob">
								<option value="무직" selected>무직</option>
								<option value="회사원">회사원</option>
								<option value="전문직">전문직</option>
								<option value="학생">학생</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>관심분야</td>
						<td>
							<input type="checkbox" name="Favorite" value="정치">정치
							<input type="checkbox" name="Favorite" value="사회">사회
							<input type="checkbox" name="Favorite" value="정보통신">정보통신
						</td>
					</tr>
					<tr>
						<td colspan=2 style="text-align: center;">
							<input type="submit" value="확인">
							<input type="reset" value="취소">
						</td>
					</tr>
				</table>
			</form>
		</div>
		<script type="text/javascript">
			document.cookie = "Test=OK";
		</script>
	</body>
</html>