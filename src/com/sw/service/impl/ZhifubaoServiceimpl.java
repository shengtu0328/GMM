package com.sw.service.impl;

import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import com.sdo.entity.Order;
import com.sdo.entity.Orderdetail;
import com.sdo.entity.Zhifubao;
import com.sun.org.apache.xerces.internal.util.SynchronizedSymbolTable;
import com.sw.dao.OrderDao;
import com.sw.dao.OrderdetailDao;
import com.sw.dao.ShoppingcarDao;
import com.sw.dao.UserDao;
import com.sw.dao.ZhifubaoDao;
import com.sw.service.ZhifubaoService;
@Service
public class ZhifubaoServiceimpl implements ZhifubaoService {
    
	
	@Resource
	ZhifubaoDao zhifubaodao;
	
	@Resource
	OrderDao orderdao;
	
	@Resource
	OrderdetailDao orderdetaildao;

	@Resource
	ShoppingcarDao shoppingcardao;
	
	
	public Zhifubao zhufubaologin(String username) 
	{
		return zhifubaodao.zhifubaologin(username);
	}

	
	@Transactional/*(propagation=)*/ /*用事物注解完成事物功能的话在这里设置隔离级别 传播行为*/
	public void jiaqianjianqian(String username,double money,Order order,String account,List<Orderdetail> orderdetaillist) {
		// TODO Auto-generated method stub
		
		zhifubaodao.jianqian(money,username);
      	zhifubaodao.jiaqian(money,"111");
  /* */
      	
		int o=order.getOrderid();
		System.out.println("订单号"+o);
		orderdao.finishorder(order);
		
		shoppingcardao.deleteshoppingcar(account);
	
		 Iterator<Orderdetail> it= orderdetaillist.iterator();
		 while (it.hasNext()) 
	        {   
		
			 orderdetaildao.modifyorderdetailstate(it.next());
	        }
	}
	
	
	

}
