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
		<%
			String db_Id = "root";
			String db_Password = "!@#alstp9753";
			String dbHost = "localhost:3306";
			String dbName = "jspclass";
			String serverTimezone = "serverTimezone=Asia/Seoul";
			
			String driverName = "com.mysql.cj.jdbc.Driver";
			String dbURL = "jdbc:mysql://"+dbHost+"/"+dbName+"?"+serverTimezone;
			
//			Connection conn;
//			PreparedStatement pstmt;
//			ResultSet rs;
			
			try{
				// [1] Load JDBC Driver
				Class.forName(driverName);
				System.out.println("DB Connecting");
				
//				conn = DriverManager.getConnection(dbURL, db_Id, db_Password);
				System.out.println("DB Connection Success");
				
			}catch(ClassNotFoundException e){
				out.println("Where is your JDBC Driver");
				e.printStackTrace();
				return;
			}
			//out.println("MySQL JDBC Driver Connected");
			System.out.println("MySQL JDBC Driver Connected");
/*			
			String query = "Select * From member";
			try {
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
*/			
			
		%>
	</body>
</html>





