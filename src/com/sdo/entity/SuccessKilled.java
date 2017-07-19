package com.sdo.entity;

import java.util.Date;

public class SuccessKilled {
     private long seckilllId;
     private String username;
     private short state;
     private Date createTime;
     private Seckill seckill;
	public long getSeckilllId() {
		return seckilllId;
	}
	public void setSeckilllId(long seckilllId) {
		this.seckilllId = seckilllId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public short getState() {
		return state;
	}
	public void setStae(short state) {
		this.state = state;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Seckill getSeckill() {
		return seckill;
	}
	public void setSeckill(Seckill seckill) {
		this.seckill = seckill;
	}
}
