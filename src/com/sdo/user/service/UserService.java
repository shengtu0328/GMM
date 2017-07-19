package com.sdo.user.service;

import java.util.List;

import com.sdo.entity.Goods;
import com.sdo.entity.Order;
import com.sdo.entity.User;

public interface UserService {
   
   
   public void save(User user);
   
   public String registerUserNameCheck(String username);
  
   public String loginUsernameCheck(User user);
   
   public String loginSuccess(String username);
   
   public List<Order> selectOrderByUsername(String username);

   public List<Goods> querryGoodsBySeller(String userName);
   
   public User getUserByUsername(String username);
}
