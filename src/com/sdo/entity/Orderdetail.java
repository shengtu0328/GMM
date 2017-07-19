package com.sdo.entity;

import java.io.Serializable;
import java.math.BigDecimal;

public class Orderdetail implements Serializable
{
/**
	 * 
	 */
  private static final long serialVersionUID = 3333416324385579054L;
  private int orderdetailId;
  private int goodsId;
  private String title;
  private BigDecimal price;
  private int goodsNums;
  private int orderId;
  private BigDecimal subtotal;
  private String image;
  private String seller;
  private String buyer;
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}

public int getOrderdetailId() {
	return orderdetailId;
}
public void setOrderdetailId(int orderdetailId) {
	this.orderdetailId = orderdetailId;
}
public int getGoodsId() {
	return goodsId;
}
public void setGoodsId(int goodsId) {
	this.goodsId = goodsId;
}

public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}

public int getGoodsNums() {
	return goodsNums;
}
public void setGoodsNums(int goodsNums) {
	this.goodsNums = goodsNums;
}
public BigDecimal getPrice() {
	return price;
}
public void setPrice(BigDecimal price) {
	this.price = price;
}
public BigDecimal getSubtotal() {
	return subtotal;
}
public void setSubtotal(BigDecimal subtotal) {
	this.subtotal = subtotal;
}
public static long getSerialversionuid() {
	return serialVersionUID;
}
public void setOrderdetailstate(String string) {
	// TODO Auto-generated method stub
	
}
public int getOrderId() {
	return orderId;
}
public void setOrderId(int orderId) {
	this.orderId = orderId;
}
public String getSeller() {
	return seller;
}
public void setSeller(String seller) {
	this.seller = seller;
}
public String getBuyer() {
	return buyer;
}
public void setBuyer(String buyer) {
	this.buyer = buyer;
}

}
