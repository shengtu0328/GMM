package com.sw.service;

import java.util.List;

import com.sdo.entity.Order;
import com.sdo.entity.Orderdetail;
import com.sdo.entity.Zhifubao;

public interface ZhifubaoService {
  public Zhifubao zhufubaologin(String username);
  public void jiaqianjianqian(String username,double money,Order order,String account,List<Orderdetail> orderdetaillist);
}
