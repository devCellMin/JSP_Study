<%@page import="java.awt.print.Printable"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<jsp:include page="DB_Conn.jsp"></jsp:include>
		<%
			String db_Id = "root";
			String db_Password = "!@#alstp9753";
			String dbHost = "localhost:3306";
			String dbName = "jspclass";
			String serverTimezone = "serverTimezone=Asia/Seoul";
			String dbURL = "jdbc:mysql://"+dbHost+"/"+dbName+"?"+serverTimezone;
			
			Connection conn;
			PreparedStatement pstmt;
			ResultSet rs;
			
			String query = "Select * From member";
			try {
				conn = DriverManager.getConnection(dbURL, db_Id, db_Password);
				pstmt = conn.prepareStatement(query);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					String name = rs.getString("name");
					String addr = rs.getString("addr");
					String phone = rs.getString("phone");
					out.println("<br>"+name+"   "+addr+"   "+phone+"");
				}
			} catch(SQLException e) {
				e.printStackTrace();
			}
			
			
		%>
	</body>
</html>





