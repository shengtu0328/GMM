package com.sdo.user.dao;

import java.math.BigDecimal;
import java.util.List;

import com.sdo.entity.Goods;
import com.sdo.entity.Order;
import com.sdo.entity.Orderdetail;
import com.sdo.entity.User;

public interface UserDao {
   /*保存单个用户*/
   public void save(User user);
   
   /*靠用户名查处该用户的所有信息*/
   public User selectUserByUserName(String userName);
   
   /*靠用户名查处该用户的所有信息*/
   public String selectWhoByUserName(String userName);

   public int deductWallet(Order order);
   
   public int refund(Order order);
   
   public BigDecimal querryWallet(String userName);
   
   public List<Goods> querryGoodsBySeller(String userName);
   
   public int updateWallet(List<Orderdetail> orderdetailList);
   
   public User querryOrderListByBuyer(String username);

   public User getUserByUsername(String username);
   
}
