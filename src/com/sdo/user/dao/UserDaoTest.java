package com.sdo.user.dao;

import static org.junit.Assert.*;

import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.sdo.entity.Order;
import com.sdo.entity.User;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(("classpath:applicationContext.xml"))
public class UserDaoTest {
    
	@Resource
	UserDao userdao; 
	
	@Test
	public void testQuerryOrderListByBuyer() {
	     User user= userdao.querryOrderListByBuyer("xrq");
	   System.out.println(user);
		List<Order> orderList = user.getOrderList();
		for (Order order : orderList) {
			System.out.println(order);
		}
	}

	
	@Test
	public void testgetUserByUsername() {
	     User user= userdao.getUserByUsername("xrq");
	     
	    System.out.println(user.getWallet());
	}
}
