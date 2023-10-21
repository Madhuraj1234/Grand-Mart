package com.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {
	
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(length=10, name="user_Id")
	private int userId;
	
	@Column(length=100, name="user_Name")
	private String userName;
	
	@Column(length=100, name="user_Email")
	private String userEmail;
	
	@Column(length=100, name="user_Pass")
	private String userPass;
	
	@Column(length=12, name="user_Phone")
	private String userPhone;
	
	@Column(length=1500, name="user_Address")	
	private String userAddress;
	
	@Column(name="user_type")
	private String userType;

	public User(int userId, String userName, String userEmail, String userPass, String userPhone, String userAddress, String userType) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPass = userPass;
		this.userPhone = userPhone;
		this.userAddress = userAddress;
		this.userType=userType;
	}

	public User(String userName, String userEmail, String userPass, String userPhone, String userAddress, String userType) {
		super();
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPass = userPass;
		this.userPhone = userPhone;
		this.userAddress = userAddress;
		this.userType=userType;
	}

	public User() {
		super();
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

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPass() {
		return userPass;
	}

	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	
	

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	@Override
	public String toString() {
		return "user [userId=" + userId + ", userName=" + userName + ", userEmail=" + userEmail + ", userPass="
				+ userPass + ", userPhone=" + userPhone + ", userAddress=" + userAddress + "]";
	}
	
	
		
}

