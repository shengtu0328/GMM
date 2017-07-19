package com.sw.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sdo.entity.Order;
import com.sdo.entity.Orderdetail;
import com.sdo.entity.Zhifubao;
import com.sw.service.OrderService;
import com.sw.service.ZhifubaoService;

@Controller
@RequestMapping("pay")
public class PayController {
	
	@Resource
	HttpServletRequest request;
	
	@Resource
	OrderService orderservice;
	
	@Resource
	ZhifubaoService zhifubaoservice;
	
	
	@RequestMapping("zhifubaologin")
	
	public String zhifubaologin()
	{   
		return "/zhifubaologin.jsp";
	}
	
	
	@RequestMapping("zhifubaojiaqianjianqian")
	
	public String zhifubaojiaoyan()
	{   
		String username = request.getParameter("username");
	    String password = request.getParameter("password");
	    System.out.println(username);
	    Zhifubao zhifubao=zhifubaoservice.zhufubaologin(username);
	    if(zhifubao==null)
	    {   request.setAttribute("tips", "支付宝用户名不存在");
	    	return"/zhifubaologin.jsp";
	    }
	    else 
	    {
		  String p= zhifubao.getPassword();
	      if(p.equals(password))
	      {   
	    	  Order order=(Order) request.getSession().getAttribute("order");
	    	  double price=order.getTotalprice();
	    	  String account=order.getUsername();
	    	  List<Orderdetail> orderdetaillist=(List<Orderdetail>) request.getSession().getAttribute("orderdetaillist");
	          zhifubaoservice.jiaqianjianqian(username, price,order,account, orderdetaillist);
	    	  request.setAttribute("price", price);
	    	  return "/paysuccess.jsp";
	      }
	      else
	        request.setAttribute("tips", "支付宝密码错误");
		    return"/zhifubaologin.jsp";
	    }
	}
}
