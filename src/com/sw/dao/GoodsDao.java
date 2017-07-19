package com.sw.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sdo.entity.Goods;
import com.sdo.entity.User;
@Repository
public interface GoodsDao {
    public void savegoods(Goods goods);
    
    public List<Goods> querryallgoodsbycategory(int category_id);
	
    public List<Goods> querryallgoodsbycategoryPage2(int category,int currentPage,int  pageSize);
	
    public int selectcountsfromgoods(int category);
    
    public List<Goods> querryallgoods();
    
    public List<Goods> querryallgold();
    
    public List<Goods> querryallaccounts();
    
    public List<Goods> querryallequipments();
    
	public Goods selectgoodsbyId(int id );
	
	public void deleteById(int uid);
	
	public List<User> selectAll();
	
	public void modifygoods(Goods g);
}
