package com.sporty_shoes.databases;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userId;
	private String userName;
	private String userPhno;
	private String userAddress;
	private String userEmail;
	private String password;
	public User(String userName, String userPhno, String userAddress, String userEmail, String password) {
		super();
		this.userName = userName;
		this.userPhno = userPhno;
		this.userAddress = userAddress;
		this.userEmail = userEmail;
		this.password = password;
	}
	
	public User() {
		
	}

	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPhno() {
		return userPhno;
	}
	public void setUserPhno(String userPhno) {
		this.userPhno = userPhno;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", userPhno=" + userPhno + ", userAddress="
				+ userAddress + ", userEmail=" + userEmail + ", password=" + password + "]";
	}
	
	
}
