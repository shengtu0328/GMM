package com.sw.service.impl;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.sdo.entity.Goods;
import com.sdo.entity.Page;
import com.sw.dao.GoodsDao;
import com.sw.service.GoodsService;
@Service
public class GoodsServiceimpl implements GoodsService {

	@Resource
	HttpServletRequest request;
	
	@Resource
	GoodsDao  goodsdao;
	
	@Override
	public void addgoods(Goods goods) 
	{   
		goodsdao.savegoods(goods);
			
	}
	
	public Page querryallgoods(int pageSize,int currentPage)
	{  List<Goods> ld=goodsdao.querryallgoods();
	   for (Goods goods : ld) {
		System.out.println(goods.getCategoryid());
		System.out.println(goods.getArea());
	}
	   Page<Goods> pager=new Page<Goods>(pageSize,currentPage,ld);
	   return pager;

	}

	/*@Override
	public String querryallgoodsbycategory_id(int category_id) {
		// TODO Auto-generated method stub
		List<Goods> ld=new ArrayList<Goods>();
		ld=goodsdao.querryallgoodsbycategory(category_id);
		return null;
	}
*/
	@Override
	public List<Goods> querryallaccounts() 
	{
		List<Goods> ld=new ArrayList<Goods>();
	    ld=goodsdao.querryallgoodsbycategory(1);
		return ld;
	}

	@Override
	public Page<Goods> querryallgoodsbyPage(int pageSize,int currentPage,int category) {
		List<Goods> list=goodsdao.querryallaccounts();
		Page<Goods> pager=new Page<Goods>(pageSize,currentPage,list);
		return pager;
	}

	@Override
	public void detelebyID(int id) {
		// TODO Auto-generated method stub
		goodsdao.deleteById(id);
	}

	@Override
	public Goods selectgoodsbyId(int gid) {
		return goodsdao.selectgoodsbyId(gid);
	}

	@Override
	public void modifygoods(Goods g) {
		goodsdao.modifygoods(g);
	}

	@Override
	public Page querryallgoodsbycategoryPage2(int category, int currentPage, int pageSize) {
		int totalCount=goodsdao.selectcountsfromgoods(category);//总记录数
		System.out.println(totalCount);
		int totalPage = totalCount/pageSize;     //总页数
    	if(totalCount%pageSize != 0)            //总页数
    	{                                      //总页数
			totalPage ++;                     //总页数
		}                                    //总页数
    	int currentpage=currentPage>totalPage?totalPage:currentPage;//当前页数
    	int limitstart=(currentPage-1)*pageSize;  //算limit函数中的起始位置
		List<Goods> goodslist=goodsdao.querryallgoodsbycategoryPage2(category,limitstart,pageSize);
		Page<Goods> page=new Page<Goods>(totalCount,totalPage,currentPage,goodslist,pageSize);
		return page;
	}
	
	
	/*public String querryallaccountsbyPage1(int pageSize,int currentPage) {
		List<Goods> list=goodsdao.querryallaccounts();
		Pager<Goods> pager=new Pager<Goods>(pageSize,currentPage,list);
		request.setAttribute("pager", pager);//pageSize cuurrentPage是参数传的 list是数据库表查询的
		return"/querryaccounts.jsp";
	}
	*/
	

}
