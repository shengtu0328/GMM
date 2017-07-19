package com.sdo.order.service.impl;

import java.math.BigDecimal;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sdo.entity.Goods;
import com.sdo.entity.Order;
import com.sdo.entity.Orderdetail;
import com.sdo.goods.dao.GoodsDao;
import com.sdo.order.dao.OrderDao;
import com.sdo.order.service.OrderService;
import com.sdo.shoppingcar.dao.ShoppingCarDao;
import com.sdo.user.dao.UserDao;


@Service
public class OrderServiceimpl implements OrderService {
    
	@Resource
	private OrderDao orederDao;
	
	@Resource
	private UserDao userDao;
	
	@Resource
	private ShoppingCarDao shoppingcarDao;
	
	@Resource
	private GoodsDao goodsDao;
	
	@Override
	@Transactional
	public int submit(Order order,List<Integer> shoppingcarIdlList) {
		List<Orderdetail> orderdetailList = order.getOrderdetailList();
        orederDao.addOrder(order);
		int orderId = order.getOrderId();
	    Iterator<Orderdetail> it= orderdetailList.iterator();
	    while (it.hasNext()) 
        {  
	    	Orderdetail orderdetail = it.next();
	    	orderdetail.setOrderId(orderId);
        }
		orederDao.addOrderdetail(orderdetailList);
		if(shoppingcarIdlList!=null)
		shoppingcarDao.deleteshoppingcarList(shoppingcarIdlList);
		return orderId;
	}

	@Override
	@Transactional
	public String pay(Integer orderId) {
	    
		Order order=orederDao.querryOrderByOrderId(orderId);
		BigDecimal wallet = userDao.querryWallet(order.getBuyer());
		if(wallet.subtract(order.getTotalPrice()).doubleValue()>=0)
		{ 
		  order.setState("已付款");
		  orederDao.updateState(order);
		  userDao.deductWallet(order);
	      return"支付成功！";
		}
		else
		return "余额不足！";
	}

	@Override
	public List<Order> querry(Order order) {
		List<Order> orderList = orederDao.querry(order);
		return orderList;
	}

	@Override
	public List<Goods> getGoodsByOrderId(Integer orderId) {
		// TODO Auto-generated method stub
		return orederDao.getGoodsByOrderId(orderId);
	}
	@Transactional
	@Override
	public String deliver(Integer orderId) {
		List<Orderdetail> orderdetailList = orederDao.querryOrderdetailbByOrderId(orderId);
		userDao.updateWallet(orderdetailList);
		Order order=orederDao.querryOrderByOrderId(orderId);
		order.setState("已发货");
		orederDao.updateState(order);
		goodsDao.changeGoodsNums(orderdetailList);
		return "success";
	}
	@Transactional
	@Override
	public String cancel(Integer orderId) {
		Order order=orederDao.querryOrderByOrderId(orderId);
		order.setState("已取消");
		orederDao.updateState(order);
		userDao.refund(order);
		return "success";
	}

	@Override
	public List<Order> querrybyBuyer(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	

	
}
