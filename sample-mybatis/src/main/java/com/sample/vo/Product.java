package com.sample.vo;

import java.util.Date;

public class Product {

	private int no;
	private String name;
	private String maker;
	private String category;
	private int price;
	private int discountPrice;
	private int stock;
	private String soldOut;
	private Date createdDate;
	private int reviewCnt;
	
	public Product() {}

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

	public String getMaker() {
		return maker;
	}

	public void setMaker(String maker) {
		this.maker = maker;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getDiscountPrice() {
		return discountPrice;
	}

	public void setDiscountPrice(int discountPrice) {
		this.discountPrice = discountPrice;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public String getSoldOut() {
		return soldOut;
	}
	
	public String getSoldOutMessage() {
		if ("N".equals(soldOut)) {
			return "판매중";
		}
		return "품절";
	}

	public void setSoldOut(String soldOut) {
		this.soldOut = soldOut;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public int getReviewCnt() {
		return reviewCnt;
	}

	public void setReviewCnt(int reviewCnt) {
		this.reviewCnt = reviewCnt;
	}
	
}
