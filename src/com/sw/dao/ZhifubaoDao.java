package com.sw.dao;

import com.sdo.entity.Zhifubao;

public interface ZhifubaoDao {
   public Zhifubao zhifubaologin(String username);
   public void  jianqian(double money,String username);
   public void  jiaqian(double money,String username);
}
