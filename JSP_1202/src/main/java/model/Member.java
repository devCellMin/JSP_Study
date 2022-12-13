package model;

public class Member {
	private String userId, userPassword, userName;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return String.format("Member : [Name : %s, Id : %s, Password : %s]", userName, userId, userPassword);
	}
	
}
