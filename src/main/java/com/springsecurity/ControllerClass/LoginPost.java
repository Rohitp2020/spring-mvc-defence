package com.springsecurity.ControllerClass;

public class LoginPost {
	
	static String email;
	static String pass;
	
	public LoginPost(String email, String pass) {
		this.email = email;
		this.pass = pass;
	}
	
	public static String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public static String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	

}
