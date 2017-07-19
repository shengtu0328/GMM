package com.sdo.shoppingcar.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sdo.entity.ShoppingCar;


public interface ShoppingCarDao {
    public int add(ShoppingCar shoppingcar) ;
    
    public ShoppingCar selectShoppingcarByUsernameAndGoodsId(@Param("buyer")String buyer,@Param("goodsId")Integer goodsId);
    
    public int addGoodsNums(ShoppingCar shoppingcar);
    
    public int updateGoodsNums(ShoppingCar shoppingcar);
    
    public List<ShoppingCar> show(String username);
    
    public int delete(ShoppingCar shoppingcar);

	public int deleteshoppingcarList(List<Integer> shoppingcarIdlList);
	
	public int selectCountsByUserName(String username);
}
