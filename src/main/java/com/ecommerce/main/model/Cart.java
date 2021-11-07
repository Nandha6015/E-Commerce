package com.ecommerce.main.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Cart {

	@Id
	@GeneratedValue
	private int cartId;
	private int prodId;
	private String prodName;
	private String prodImgSrc;
	private String prodNos;
	private String prodTotalPrice;
	private String cartTotalPrice;
	
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public int getProdId() {
		return prodId;
	}
	public void setProdId(int prodId) {
		this.prodId = prodId;
	}
	public String getProdName() {
		return prodName;
	}
	public void setProdName(String prodName) {
		this.prodName = prodName;
	}
	public String getProdImgSrc() {
		return prodImgSrc;
	}
	public void setProdImgSrc(String prodImgSrc) {
		this.prodImgSrc = prodImgSrc;
	}
	public String getProdNos() {
		return prodNos;
	}
	public void setProdNos(String prodNos) {
		this.prodNos = prodNos;
	}
	public String getProdTotalPrice() {
		return prodTotalPrice;
	}
	public void setProdTotalPrice(String prodTotalPrice) {
		this.prodTotalPrice = prodTotalPrice;
	}
	public String getCartTotalPrice() {
		return cartTotalPrice;
	}
	public void setCartTotalPrice(String cartTotalPrice) {
		this.cartTotalPrice = cartTotalPrice;
	}
	
		
}
