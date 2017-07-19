package com.sdo.goods.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sdo.entity.Autocomplete;
import com.sdo.entity.Goods;
import com.sdo.goods.dao.GoodsDao;
import com.sdo.goods.service.GoodsService;
@Service
public class GoodsServiceImpl implements GoodsService {
    @Resource
	private GoodsDao goodsDao;
    
	@Override
	public int save(Goods goods) {
		
		return goodsDao.save(goods);
		
	}
	@Override
	public List<Goods> querryByCategoryByPage(int categoryId, int offset, int limit) {
		return goodsDao.querryByCategoryByPage(categoryId, offset, limit);
	}
	@Override
	public int getTotalRows(int categoryId) {
		// TODO Auto-generated method stub
		return goodsDao.getTotalRows(categoryId);
	}
	@Override
	public Goods getDetail(int goodsId) {
		// TODO Auto-generated method stub
		return  goodsDao.getDetail(goodsId);
	}
	@Override
	public List<Goods> querryByPage(Goods goods) {
		int totalRows=goodsDao.getTotalRows(goods.getCategoryId());/*根据查询条件获得总记录数*/
		goods.getPm().setTotalRows(totalRows);/*根据查询条件设置总记录数*/
		goods.getPm().setStart();
		return goodsDao.querryByPage(goods);
	}
	@Override
	public List<Goods> searchByCondition(Goods goods) {
		// TODO Auto-generated method stub
		return goodsDao.searchByCondition(goods);
	}
	@Override
	public int changeGoodsState(Goods goods) {
		return goodsDao.changeGoodsState(goods);
	}
	@Override
	public List<Goods> getAutoList(String trim) {
		
		return goodsDao.getAutoList( trim);
		
	}
	
}
