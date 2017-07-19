package com.sdo.entity;

public class BaseEntity {
	
	/*查询条件*/
	private String condition;
	
	private PageParams pm = new PageParams();

	public PageParams getPm() {
		return pm;
	}
	public void setPm(PageParams pm) {
		this.pm = pm;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
}
