package com.sw.service;

import java.util.List;

import com.sdo.entity.Order;
import com.sdo.entity.Orderdetail;

public interface OrderService {
  public void writeorderandorderdetail(Order order,List<Orderdetail> orderdetaillist);
  public int selectmaxorderid();
  public List<Order> selectmyorder(String username);
}
