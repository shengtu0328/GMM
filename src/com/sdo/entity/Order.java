package com.sdo.entity;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

public class Order {
	private Integer orderId;
	private String buyer;
	private BigDecimal totalPrice;
	private String state;
	private String area;
	private String qq;
	private String telephone;
	private String gameAccount;
	private Date createTime;
	private List<Orderdetail> orderdetailList;

	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", buyer=" + buyer + ", totalPrice=" + totalPrice + ", state=" + state
				+ ", area=" + area + ", qq=" + qq + ", telephone=" + telephone + ", gameAccount=" + gameAccount
				+ ", createTime=" + createTime + ", orderdetailList=" + orderdetailList + "]";
	}

	public String getGameAccount() {
		return gameAccount;
	}

	public void setGameAccount(String gameAccount) {
		this.gameAccount = gameAccount;
	}





	public BigDecimal getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getBuyer() {
		return buyer;
	}

	public void setBuyer(String buyer) {
		this.buyer = buyer;
	}

	

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	



	public List<Orderdetail> getOrderdetailList() {
		return orderdetailList;
	}

	public void setOrderdetailList(List<Orderdetail> orderdetailList) {
		this.orderdetailList = orderdetailList;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

}
