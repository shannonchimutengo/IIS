package com.bean;

public class LoginBean {
	@Override
	public String toString() {
		return "LoginBean [userName=" + userName + ", passwords=" + passwords + ", email=" + email + "]";
	}
	
	private int userName;
	public void setUserName(int userName) {
		this.userName = userName;
	}

	private String passwords;
	private String email ;
	
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPasswords() {
		return passwords;
	}
	public void setPasswords(String password) {
		this.passwords = password;
	}
	public int getUserName() {
		return userName;
	}

	

}
