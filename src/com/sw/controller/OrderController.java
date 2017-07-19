package com.sw.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sdo.entity.Order;
import com.sdo.entity.Orderdetail;
import com.sdo.entity.ShoppingCar;
import com.sw.dao.GoodsDao;
import com.sw.service.OrderService;

@Controller
@RequestMapping("order")
public class OrderController {
   
	
	@Resource
	HttpServletRequest request;
	
	@Resource
	OrderService orderservice;
	
	@RequestMapping("/writeorderandorderdetail")
	public String writeorderandorderdetail()
	{   
		/*String username=(String) request.getSession().getAttribute("username");
		String price=request.getParameter("price");
		String goodsid=request.getParameter("idd");
		String goodsnums=request.getParameter("goodsnums");
		String goodstitle=request.getParameter("goodstitle");
		Double totalprice=Double.valueOf(price)*Integer.valueOf(goodsnums);
		
		Order order=new Order();
		order.setUsername(username);
		order.setTime(new Date());
		order.setState("未付款");*/
		/*if(orderservice.selectmaxorderid()==null)
		{
			orderservice.selectmaxorderid()=1;
		}*/
	  /*  order.setOrderid(orderservice.selectmaxorderid()+1);
		System.out.println("第一次查出来的id是"+orderservice.selectmaxorderid());
   

		request.setAttribute("neworder", order);
		
		return "/makeorder.jsp";*/
		Order order=(Order) request.getSession().getAttribute("order");
		List<Orderdetail> orderdetaillist=(List<Orderdetail>) request.getSession().getAttribute("orderdetaillist");
		orderservice.writeorderandorderdetail(order,orderdetaillist);
		Double price=order.getTotalprice();
		request.setAttribute("price", price);
		return"/pay.jsp";
	}
	
	@RequestMapping("/shoppingcarmakeorderandorderdetail")
	public String shoppingcarmakeorderandorderdetail()
	{   
		Double shoppingcartotalprice=(Double) request.getSession().getAttribute("shoppingcartotalprice");
		List shoppingcarlist=(List) request.getSession().getAttribute("shoppingcarlist");
		String username=(String) request.getSession().getAttribute("username");
     	System.out.println("进入购物车到订单转换");
			Order order=new Order();
			int orderid=order.setOrderid(orderservice.selectmaxorderid()+1);
		    Iterator<ShoppingCar> it= shoppingcarlist.iterator();
		    List<Orderdetail> orderdetaillist=new ArrayList<Orderdetail>();
	        while (it.hasNext()) 
	        {  
	        	Orderdetail Orderdetail = it.next();
	        	
	        }
	        order.setTotalprice(shoppingcartotalprice);
	        order.setTime(new Date());
	        order.setState("未付款");
	        order.setUsername(username);
	        /*orderservice.makeorder(order);*/
	        request.setAttribute("order", order);
	        request.setAttribute("orderdetaillist", orderdetaillist);
	        request.getSession().setAttribute("orderdetaillist", orderdetaillist);
	        request.getSession().setAttribute("order", order);
	        return"/makeorder.jsp";
	}
	
	
	@RequestMapping("/goodsmakeorderandorderdetail")
	public String goodsmakeorderandorderdetail()
	{   
		String username=(String) request.getSession().getAttribute("username");
		Double price=Double.valueOf(request.getParameter("price"));
		System.out.println(price);
		int goodsid=Integer.valueOf(request.getParameter("goodsid"));
		int goodsnums=Integer.valueOf(request.getParameter("goodsnums"));
		System.out.println(goodsnums);
		String goodstitle=request.getParameter("goodstitle");
     	System.out.println("进入商品到订单转换");
			Order order=new Order();
			int orderid=order.setOrderid(orderservice.selectmaxorderid()+1);
		    List<Orderdetail> orderdetaillist=new ArrayList<Orderdetail>();
	        	Orderdetail orderdetail =new Orderdetail ();
	        	orderdetail.setGoodsid(goodsid);
	        	orderdetail.setGoodsnums(goodsnums);
	        	orderdetail.setPrice(price);
	        	orderdetail.setTotalprice(price);
	        	orderdetail.setGoodstitle(goodstitle);
	        	orderdetail.setOrderdetailstate("未发货");
	        	orderdetail.setOrder1id(orderid);
	        	orderdetaillist.add(orderdetail);
	        order.setTotalprice(price);
	        order.setTime(new Date());
	        order.setState("未付款");
	        order.setUsername(username);
	        /*orderservice.makeorder(order);*/
	        request.setAttribute("order", order);
	        request.setAttribute("orderdetaillist", orderdetaillist);
	        request.getSession().setAttribute("orderdetaillist", orderdetaillist);
	        request.getSession().setAttribute("order", order);
	        return"/makeorder.jsp";
	}
	
	
	
	
	@RequestMapping("/payorder")
	public String payorder()
	{
		return null; 
		
	}
	
	@RequestMapping("selectmyorder")
	public String selectmyorder()
	{   
		if(request.getSession().getAttribute("username")!=null);
		String username=(String) request.getSession().getAttribute("username");
		List<Order> myorder=orderservice.selectmyorder(username);
        request.setAttribute("myorder", myorder);
		return"/myorder.jsp";
	}
}
