package com.sw.dao;

import java.util.List;

import com.sdo.entity.ShoppingCar;

public interface ShoppingcarDao {
  public void addshoppingcar(ShoppingCar shoppingcar);
  public List<ShoppingCar>  selectshoppingcar(String username);
  public void deleteshoppingcar(String username);
  public int  deleteshoppingcarList(List<Integer> shoppingcarIdlList);
  public int selectcountbyusername(ShoppingCar shoppingcar);
}
