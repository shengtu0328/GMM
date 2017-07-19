package com.sdo.order.service;

import java.util.List;

import com.sdo.entity.Goods;
import com.sdo.entity.Order;

public interface OrderService {
    
	public int submit(Order order, List<Integer> shoppingcarIdlList); 
	
	public String pay(Integer orderId);
	
	public List<Order> querry(Order order);
	
	public List<Goods> getGoodsByOrderId(Integer orderId);

	public String deliver(Integer orderId);

	public String cancel(Integer orderId);
	
	public List<Order> querrybyBuyer(String username);
}
