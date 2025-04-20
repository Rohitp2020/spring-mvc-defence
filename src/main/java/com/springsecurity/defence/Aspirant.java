package com.springsecurity.defence;

public class Aspirant {
	
	String aspirantName;
	String aspirantEmail;
	String aspirantPassword;
	
	public Aspirant(String aspirantName, String aspirantEmail, String aspirantPassword) {
		super();
		this.aspirantName = aspirantName;
		this.aspirantEmail = aspirantEmail;
		this.aspirantPassword = aspirantPassword;
	}
	public String getAspirantName() {
		return aspirantName;
	}
	public String getAspirantEmail() {
		return aspirantEmail;
	}
	public String getAspirantPassword() {
		return aspirantPassword;
	}
	
	

}
