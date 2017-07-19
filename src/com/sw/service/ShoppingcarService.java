package com.sw.service;

import java.util.List;

import com.sdo.entity.ShoppingCar;

public interface ShoppingcarService {
   public int addshoppingcarandselectcountbyusername(ShoppingCar shoppingcar);
   public List<ShoppingCar> selectshoppingcar(String username);
}
