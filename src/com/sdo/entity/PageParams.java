package com.sdo.entity;

public class PageParams {
	// 页码
	private Integer page = 1;

	// 每页记录数
	private Integer pageSize =12;

	// 总记录数
	private Integer totalRows;

	// 总页数
	private Integer totalPage;
	
	private Integer start;

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(Integer totalRows) {
		this.totalRows = totalRows;
		this.totalPage = (totalRows - 1) / pageSize + 1;
	}

	public Integer getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}

	public PageParams() {
	}

	public PageParams(Integer totalRows) {
		this.totalRows = totalRows;
		this.totalPage = (totalRows - 1) / pageSize + 1;
	}
    /* 根据是第几页设置偏移量*/
	public void setStart() {
		this.start=(getPage() - 1) * getPageSize();
	}
    
	public int getEnd() {
		if (getTotalRows() != null)
			return (getPage() - 1) * getPageSize() + (getPageSize()) < getTotalRows()
					? (getPage() - 1) * getPageSize() + (getPageSize()) : getTotalRows();
		else
			return 0;
	}
}
