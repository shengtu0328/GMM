package com.sw.service.impl;

import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sdo.entity.Order;
import com.sdo.entity.Orderdetail;
import com.sdo.entity.ShoppingCar;
import com.sw.dao.GoodsDao;
import com.sw.dao.OrderDao;
import com.sw.dao.OrderdetailDao;
import com.sw.service.OrderService;
@Service
public class OrderServiceimpl implements OrderService{
    
	@Resource
	OrderDao orderdao;
	@Resource
	OrderdetailDao orderdetaildao;
	
	@Override
	@Transactional
	public void writeorderandorderdetail(Order order,List<Orderdetail> orderdetaillist) {
		System.out.println("进入了writeorderandorderdetail");
		orderdao.writeorder(order);
	 Iterator<Orderdetail> it= orderdetaillist.iterator();
		 while (it.hasNext()) 
	        {   
			    orderdetaildao.writeorderdetail(it.next());
	        }
	}
	@Override
	public int selectmaxorderid() 
	{
		return orderdao.selectmaxorderid();
	}

	@Override
	public List<Order> selectmyorder(String username)
	{
		return orderdao.selectmyorder(username);
	}

}
