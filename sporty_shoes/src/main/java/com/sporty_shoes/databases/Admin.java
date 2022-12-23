package com.sporty_shoes.databases;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Admin {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int aId;
	private String Admin_name;
	private String Admin_pass;
	
	
	
	public Admin() {
		super();
	}
	public Admin(String admin_name, String admin_pass) {
		super();
		Admin_name = admin_name;
		Admin_pass = admin_pass;
	}
	public Admin(int aId, String admin_name, String admin_pass) {
		super();
		this.aId = aId;
		Admin_name = admin_name;
		Admin_pass = admin_pass;
	}
	public String getAdmin_name() {
		return Admin_name;
	}
	public void setAdmin_name(String admin_name) {
		Admin_name = admin_name;
	}
	public String getAdmin_pass() {
		return Admin_pass;
	}
	public void setAdmin_pass(String admin_pass) {
		Admin_pass = admin_pass;
	}
	@Override
	public String toString() {
		return "Admin [aId=" + aId + ", Admin_name=" + Admin_name + ", Admin_pass=" + Admin_pass + "]";
	}
	
}
