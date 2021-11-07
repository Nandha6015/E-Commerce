package com.ecommerce.main.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class OrderDetails {
	
	@Id
	@GeneratedValue
	private int orderDetailsId;
	private int orderId;
	private int prodId;
	private int prodNos;
	private int prodTotalPrice;
	
	public int getOrderDetailsId() {
		return orderDetailsId;
	}
	public void setOrderDetailsId(int orderDetailsId) {
		this.orderDetailsId = orderDetailsId;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getProdId() {
		return prodId;
	}
	public void setProdId(int prodId) {
		this.prodId = prodId;
	}
	public int getProdNos() {
		return prodNos;
	}
	public void setProdNos(int prodNos) {
		this.prodNos = prodNos;
	}
	public int getProdTotalPrice() {
		return prodTotalPrice;
	}
	public void setProdTotalPrice(int prodTotalPrice) {
		this.prodTotalPrice = prodTotalPrice;
	}
		
}
