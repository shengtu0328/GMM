package com.sdo.order.dao;

import java.util.List;

import com.sdo.entity.Goods;
import com.sdo.entity.Order;
import com.sdo.entity.Orderdetail;


public interface OrderDao {
    
	public int addOrder(Order order); 
	
	public int addOrderdetail(List<Orderdetail> orderdetailList);

	public int updateState(Order order);
	
	public List<Order> querry(Order order);
	
	public List<Goods> getGoodsByOrderId(Integer orderId);
	
	public List<Orderdetail> querryOrderdetailbByOrderId(Integer orderId);
	
	public Order querryOrderByOrderId(Integer orderId);
}
