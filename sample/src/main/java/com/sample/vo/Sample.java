package com.sample.vo;

import java.util.Date;

public class Sample {
	
	private int no;
	private String name;
	private String company;
	private int price;
	private int stock;
	private Date createdDate;
	
	public Sample() {}
	
	public Sample(int no, String name, String company, int price, int stock, Date createdDate) {
		super();
		this.no = no;
		this.name = name;
		this.company = company;
		this.price = price;
		this.stock = stock;
		this.createdDate = createdDate;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	};
	
}
