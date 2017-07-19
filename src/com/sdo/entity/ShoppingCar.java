package com.sdo.entity;

import java.math.BigDecimal;

public class ShoppingCar {
  private int shoppingcarId;
  private int goodsId;
  private BigDecimal price;
  private String buyer;
  private String goodsTitle;
  private int goodsNums;
  private String image;
  private Integer categoryId;
  private String area;
  private String seller;
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}
public BigDecimal getPrice() {
	return price;
}
public void setPrice(BigDecimal price) {
	this.price = price;
}
public int getShoppingcarId() {
	return shoppingcarId;
}
public void setShoppingcarId(int shoppingcarId) {
	this.shoppingcarId = shoppingcarId;
}
public int getGoodsId() {
	return goodsId;
}
public void setGoodsId(int goodsId) {
	this.goodsId = goodsId;
}
public String getGoodsTitle() {
	return goodsTitle;
}
public void setGoodsTitle(String goodsTitle) {
	this.goodsTitle = goodsTitle;
}
public int getGoodsNums() {
	return goodsNums;
}
public void setGoodsNums(int goodsNums) {
	this.goodsNums = goodsNums;
}

public String getBuyer() {
	return buyer;
}
public void setBuyer(String buyer) {
	this.buyer = buyer;
}
public String getSeller() {
	return seller;
}
public void setSeller(String seller) {
	this.seller = seller;
}
public Integer getCategoryId() {
	return categoryId;
}
public void setCategoryId(Integer categoryId) {
	this.categoryId = categoryId;
}
public String getArea() {
	return area;
}
public void setArea(String area) {
	this.area = area;
}


  
}
