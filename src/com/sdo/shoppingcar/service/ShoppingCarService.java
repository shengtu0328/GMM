package com.sdo.shoppingcar.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sdo.entity.Goods;
import com.sdo.entity.ShoppingCar;


public interface ShoppingCarService {
    
	public int add(Goods goods,String username,Integer selected);
	
	public List<ShoppingCar> show(String username);
	
	public int update(ShoppingCar shoppingcar);

	public int delete(ShoppingCar shoppingcar);
	
	public ShoppingCar selectShoppingcarByUsernameAndGoodsId(String username,Integer goodsId);
	
	public int selectCountsByUserName(String username);
}
