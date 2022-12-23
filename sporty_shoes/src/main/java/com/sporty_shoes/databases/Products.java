package com.sporty_shoes.databases;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Products {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int pId;
	private String pName;
	private int pPrice;
	private int pQua;
	
	@ManyToOne
	private Categories categories;

	public int getpId() {
		return pId;
	}

	public void setpId(int pId) {
		this.pId = pId;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public int getpPrice() {
		return pPrice;
	}

	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}

	public int getpQua() {
		return pQua;
	}

	public void setpQua(int pQua) {
		this.pQua = pQua;
	}

//	public Categories getCategories() {
//		return categories;
//	}
//
//	public void setCategories(Categories categories) {
//		this.categories = categories;
//	}

	

	public Products() {
		
	}

	public Products(String pName, int pPrice, int pQua, Categories categories) {
	super();
	this.pName = pName;
	this.pPrice = pPrice;
	this.pQua = pQua;
	this.categories = categories;
}

	@Override
	public String toString() {
		return "Products [pId=" + pId + ", pName=" + pName + ", pPrice=" + pPrice + ", pQua=" + pQua + "]";
	}

	
	
}
