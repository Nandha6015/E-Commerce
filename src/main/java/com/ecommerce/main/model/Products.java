package com.ecommerce.main.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
public class Products {

	@Id
	@GeneratedValue
	private int prodId;
	private String prodName;
	private String prodImgSrc;
	private double prodPrice;
	private int prodNos;
	private String prodDesc;

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

	public int getProdNos() {
		return prodNos;
	}

	public void setProdNos(int prodNos) {
		this.prodNos = prodNos;
	}

	public double getProdPrice() {
		return prodPrice;
	}

	public void setProdPrice(double prodPrice) {
		this.prodPrice = prodPrice;
	}

	public String getProdDesc() {
		return prodDesc;
	}

	public void setProdDesc(String prodDesc) {
		this.prodDesc = prodDesc;
	}

}
