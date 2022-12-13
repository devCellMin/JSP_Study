package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDao {
	private static MemberDao memberDao;
	static Connection conn;
	
	// Set DB Id, PWD, Name
	String db_Id = "root";
	String db_Password = "";

	String dbHost = "localhost:3306";
	String db_Name = "jspclass";
	String serverTimezone = "serverTimezone=Asia/Seoul";
	String dbURL = "jdbc:mysql://"+dbHost+"/"+db_Name+"?"+serverTimezone;
	String db_Class = "com.mysql.cj.jdbc.Driver";
	
	PreparedStatement pstmt;
	ResultSet rs;
	
	public MemberDao() {
		// TODO Auto-generated constructor stub
		try {
			Class.forName(db_Class);
			System.out.println("DB Connecting");
			
			conn = DriverManager.getConnection(dbURL, db_Id ,db_Password);
			System.out.println("Connecting success!");
			
		} catch (SQLException e) {
			System.out.println("Connecting false"+e);
		} catch (ClassNotFoundException e) {
			System.out.println("Cannot found JDBC driver..."+e);
		}
	}
	
	public static MemberDao getInstance() {
		if(memberDao == null) {
			memberDao = new MemberDao();
		}
		return memberDao;
	}
	
	public boolean isExistID(Member member) {
		String query = "Select Count(*) From member Where userID = ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getUserId());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getInt(1) > 0) {
					return true; // 같은 이름과 ID가 존재
				}
			}
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}return false;
	}
	
	public boolean insertMember(Member member) {
		String query = "Insert into member (userID, userName, userPassword) values (?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getUserId());
			pstmt.setString(2, member.getUserName());
			pstmt.setString(3, member.getUserPassword());
			pstmt.executeUpdate();
			return true;
			
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	
}
