package com.sw.service;

import java.util.List;

import com.sdo.entity.Goods;
import com.sdo.entity.Page;

public interface GoodsService {
    public void addgoods(Goods goods);
    public List<Goods> querryallaccounts();
                     
    public Page querryallgoods(int pageSize,int currentPage);
    public Page <Goods> querryallgoodsbyPage(int pageSize,int currentPage,int category);
    
    public Page querryallgoodsbycategoryPage2(int category,int currentPage,int pageSize);
    
    public void detelebyID(int id);
    public Goods  selectgoodsbyId(int gid);
    public void modifygoods(Goods g);
}
