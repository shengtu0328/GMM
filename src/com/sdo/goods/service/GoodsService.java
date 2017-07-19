package com.sdo.goods.service;

import java.util.List;

import com.sdo.entity.Autocomplete;
import com.sdo.entity.Goods;

public interface GoodsService {
	/*保存单个商品*/
	public int save(Goods goods);
	/*根据商品种类，偏移量查询商品集合*/
	public List<Goods> querryByCategoryByPage(int categoryId,int offset,int limit);
	
	public int getTotalRows(int categoryId);
	
	public Goods getDetail(int goodsId);
	
	public List<Goods> querryByPage(Goods goods);

	public List<Goods> searchByCondition(Goods goods);
	
	public int  changeGoodsState(Goods goods);
	
	public List getAutoList(String trem);
	
}
