package com.sdo.order.entity;

import java.util.Date;

public class Order {
   private int orderid;
   private String username;
   private Date time;
   private Double totalprice;
   private String state;

public int getOrderid() {
	return orderid;
}
public int setOrderid(int orderid) {
	return this.orderid = orderid;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public Date getTime() {
	return time;
}
public void setTime(Date time) {
	this.time = time;
}

public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public Double getTotalprice() {
	return totalprice;
}
public void setTotalprice(Double totalprice) {
	this.totalprice = totalprice;
}


}
