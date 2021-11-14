package com.ecommerce.main.model;

import java.util.List;

public class Cart {

	private int userId;
	private double prodTotalPrice;
	private List<Products> products;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public void setProduct(Products product) {
		products.add(product);
	}
	
	public List<Products> getProducts() {
		return products;
	}

	public double getProdTotalPrice() {
		return prodTotalPrice;
	}

	public void setProdTotalPrice(double d) {
		this.prodTotalPrice = d;
	}
	
}
