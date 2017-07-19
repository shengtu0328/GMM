package com.sdo.entity;

import java.util.List;

public class Category {
	private int categoryid;
	private String categoryname;
	/*
	 * 一个商品种类下会显示一个商品集合
	 */
	private List<Goods> goodslist;

	public int getCategoryid() {
		return categoryid;
	}

	public void setCategoryid(int categoryid) {
		this.categoryid = categoryid;
	}

	public String getCategoryname() {
		return categoryname;
	}

	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}

	public List<Goods> getGoodslist() {
		return goodslist;
	}

	public void setGoodslist(List<Goods> goodslist) {
		this.goodslist = goodslist;
	}

}
