package com.sdo.goods.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sdo.entity.Autocomplete;
import com.sdo.entity.Goods;
import com.sdo.entity.Orderdetail;



public interface GoodsDao 
{
	public int save(Goods goods);
	
	public List<Goods> querryByCategoryByPage(@Param("categoryId")int categoryId,@Param("offset")int offset,@Param("limit")int limit);
	
	public int getTotalRows(int categoryId);
	
	public Goods getDetail(int goodsId);
	
	public List<Goods> querryByPage(Goods goods);
	
	public List<Goods> searchByCondition(Goods goods);
	
	public int changeGoodsState(Goods goods);
	
	public int changeGoodsNums(List<Orderdetail> orderdetailList);

	public List<Goods> getAutoList(String trem);
}