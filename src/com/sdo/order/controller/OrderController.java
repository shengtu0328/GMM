package com.sdo.order.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sdo.entity.Goods;
import com.sdo.entity.ListUtil;
import com.sdo.entity.Order;
import com.sdo.entity.Orderdetail;
import com.sdo.entity.ShoppingCar;
import com.sdo.order.service.OrderService;
import com.sdo.shoppingcar.service.ShoppingCarService;

@Controller
@RequestMapping("/order")
public class OrderController {
  
	@Resource
	private OrderService orderService;
	
	@Resource
	private ShoppingCarService ShoppingcarSerivice;
	
	@RequestMapping("/shoppingcarGenerate")
	public ModelAndView shoppingcarGenerate(String area,ShoppingCar shoppingcar,HttpSession session,String goodsIds,Order order)
	{   
		BigDecimal totalPrice=new BigDecimal(0);
		List<Orderdetail> orderdetailList=new ArrayList<Orderdetail>();
		List<Integer> shoppingcarIdList=new ArrayList<Integer>();
		String username = (String) session.getAttribute("username");
		String[] goodsIdArray=goodsIds.split(";");
		for (String goodsId : goodsIdArray) {
			shoppingcar=ShoppingcarSerivice.selectShoppingcarByUsernameAndGoodsId(username, Integer.valueOf(goodsId));
			Orderdetail orderdetail =new Orderdetail ();
			orderdetail.setGoodsId(shoppingcar.getGoodsId());
			orderdetail.setGoodsNums(shoppingcar.getGoodsNums());
			orderdetail.setTitle(shoppingcar.getGoodsTitle());
			orderdetail.setPrice(shoppingcar.getPrice());
			orderdetail.setImage(shoppingcar.getImage());
			orderdetail.setSubtotal(new BigDecimal(shoppingcar.getGoodsNums()).multiply(shoppingcar.getPrice()));
			orderdetail.setSeller(shoppingcar.getSeller());
			orderdetail.setBuyer(shoppingcar.getBuyer());
			orderdetailList.add(orderdetail);
			totalPrice=totalPrice.add(orderdetail.getSubtotal());
			shoppingcarIdList.add(shoppingcar.getShoppingcarId());
		}
		order.setOrderdetailList(orderdetailList);
		order.setState("待付款");
		order.setArea(area);
		order.setBuyer(username);
		order.setTotalPrice(totalPrice);
		return new ModelAndView("generateOrder")
		        .addObject("order",order)
		        .addObject("shoppingcarIdList",shoppingcarIdList);
	}
	
	@RequestMapping("/goodsGenerate")
	public ModelAndView goodsGenerate(Order order,HttpSession session)
	{
		
		String username = (String) session.getAttribute("username");
		order.setBuyer(username);
		order.setState("待付款");
		BigDecimal price = order.getOrderdetailList().get(0).getPrice();
		int goodsNums = order.getOrderdetailList().get(0).getGoodsNums();
		BigDecimal totalPrice=price.multiply(new BigDecimal(goodsNums));
		order.setTotalPrice(totalPrice);
		order.getOrderdetailList().get(0).setSubtotal(totalPrice);
		order.getOrderdetailList().get(0).setBuyer(username);
		return new ModelAndView("generateOrder")
		        .addObject("order",order);
		
	}
	

	
	@RequestMapping("/submit")
	public ModelAndView submit(ListUtil listutil)
	{   Order order=listutil.getOrder();
        List<Integer> shoppingcarIdlList = listutil.getShoppingcarIdlList();
		int orderId = orderService.submit(order,shoppingcarIdlList);
		return new ModelAndView("pay")
				.addObject("totalPrice",order.getTotalPrice())
		        .addObject("orderId",orderId);
	}
	
	
	@RequestMapping("/pay")
	public ModelAndView pay(Integer orderId)
	{   
		String tip = orderService.pay(orderId);
		return new ModelAndView("afterPay").addObject("tip",tip);
	}
	

	@RequestMapping("/back")
	public ModelAndView back(Order order)
	{   
		List<Order> orderList = orderService.querry(order);
		return new ModelAndView("back");
			/*	.addObject("orderList",orderList);*/
		
	}
	
	@RequestMapping("/querryorderListByState/{state}")
	public ModelAndView show(Order order)
	{   
		List<Order> orderList = orderService.querry(order);
		return new ModelAndView("orderList")
				.addObject("orderList",orderList);
		
	}
	@ResponseBody
	@RequestMapping(value="/checkGoodsByOrdeId")
	public String checkGoodsByOrdeId(Integer orderId) throws JsonProcessingException
	{   
		List<Goods> goodsList = orderService.getGoodsByOrderId(orderId);
		ObjectMapper aaa=new  ObjectMapper();
		String aa=aaa.writeValueAsString(goodsList);
		return aa;
	}
	

	@ResponseBody
	@RequestMapping(value="/deliver")
	public String deliverO(Integer orderId) 
	{   
		return orderService.deliver(orderId);
	}
	
	
	@ResponseBody
	@RequestMapping(value="/cancel")
	public String cancel(Integer orderId) 
	{   
		return orderService.cancel(orderId);
	}
	
	
	@RequestMapping("/myOrder")
	public ModelAndView myOrder(Order order,HttpSession session)
	{   String username = (String) session.getAttribute("username");
		List<Order> orderList = orderService.querry(order);
		return new ModelAndView("myOrder")
				.addObject("orderList",orderList);
		
	}
	
	
}
