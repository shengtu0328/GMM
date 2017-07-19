package com.sdo.entity;

import java.util.List;

public class Page<T> {
	
	private int pageSize;       //每页记录数
	private int currentPage;	//当前页数
	private int totalPage;	   //总页数
	private int totalCount;	   //总记录数
    private List<T> dataList;   
    
    
    
    public Page(){} 
    
    public Page(int totalCount,int totalPage,int currentPage,List list,int pageSize)//sql分页
    {    
        this.totalCount=totalCount;
        this.totalPage =totalPage;
        this.currentPage=currentPage;
    	this.dataList=list;
    	this.pageSize=pageSize;
    }
    
    
    public Page(int pageSize,int currentPage ,List<T> list) ///list分页
    {
    	this.totalCount=list.size();
    	this.pageSize=pageSize;
    	this.totalPage=totalCount/pageSize;
    	if(this.totalCount%this.pageSize!=0){
    		this.totalPage++;
    	}
    	//三目表达式
    	this.currentPage=currentPage>this.totalPage?this.totalPage:currentPage;
    	int fromIndex=(currentPage-1)*this.pageSize;
    	int toIndex=currentPage*pageSize>totalCount?totalCount:currentPage*pageSize;
    	this.dataList=(List<T>) list.subList(fromIndex, toIndex);

    }
    
    /*public Page(int pageSize, int currentPage, int totalPage, int totalCount, List<T> list){
		this.pageSize = pageSize;
		this.currentPage = currentPage;
		this.totalPage = totalPage;
		this.totalCount = totalCount;
		this.dataList = list;          老的limitpage                          
	}
	
    */
    
	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public List<T> getDataList() {
		return dataList;
	}

	public void setDataList(List<T> dataList) {
		this.dataList = dataList;
	}

}
