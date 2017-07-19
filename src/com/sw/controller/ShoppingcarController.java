package com.sw.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sdo.entity.Goods;
import com.sdo.entity.Order;
import com.sdo.entity.Orderdetail;
import com.sdo.entity.ShoppingCar;
import com.sw.service.GoodsService;
import com.sw.service.OrderService;
import com.sw.service.ShoppingcarService;
import com.sw.service.ZhifubaoService;
@Controller
@RequestMapping("shoppingcar")
public class ShoppingcarController {
	@Resource
	HttpServletRequest request;
	
	
	@Resource
	ShoppingcarService  shoppingcarservice;
	
	@Resource
	GoodsService goodsservice;
	
	@Resource
	OrderService orderservice;
	
	@RequestMapping("addshoppingcar")
	public String addshoppingcar(@RequestParam("category_id") int category_id)
	{   
		String username=(String) request.getSession().getAttribute("username");
		String price=request.getParameter("price");
		System.out.println(price);
		String goodsid=request.getParameter("goodsid");
		String goodsnums=request.getParameter("goodsnums");
		System.out.println(goodsnums);
		String goodstitle=request.getParameter("goodstitle");
		String picture=request.getParameter("picture");
		Double totalprice=Double.valueOf(price)*Integer.valueOf(goodsnums);
		ShoppingCar shoppingcar=new ShoppingCar();
		shoppingcar.setGoodsid(Integer.valueOf(goodsid));
		shoppingcar.setPrice(Double.valueOf(price));
		shoppingcar.setGoodstitle(goodstitle);
		shoppingcar.setUsername(username);
		shoppingcar.setGoodsnums(Integer.valueOf(goodsnums));
		shoppingcar.setTotalprice(totalprice);
		shoppingcar.setPicture(picture);
		int shoppingcarnums=shoppingcarservice.addshoppingcarandselectcountbyusername(shoppingcar);
		request.setAttribute("category_id",category_id);
		request.setAttribute("goodsid", goodsid);
		request.setAttribute("shoppingcarnums", shoppingcarnums);
		return"/goods/goodsdetail.htm";
		
	}
	
	
	@RequestMapping("selectshoppingcar")
	
	/*为什么order和orderdetail放在session里？
	
	首先点击加入购物车，获取部分商品信息，立马加入数据库的购物车表中，
	
	然后点击我的购物车，按照用户名查询出所有购物车表中的信息 并且显示，
	
	点击结算  将购物车中的数据取出组装成order对象和orderdetail对象  显示将要变成订单的信息 点击提交订单 生成订单 为了不在升订单的界面中继续获取订单和订单详情的零散信息再次组装
          （如果）
	*/
	public String selectshoppingcar(Model model)
	{   
		String username=(String) request.getSession().getAttribute("username");
		List<ShoppingCar> shoppingcarlist=new ArrayList<ShoppingCar>();
		shoppingcarlist=shoppingcarservice.selectshoppingcar(username);
		Iterator<ShoppingCar> shoppingprice= shoppingcarlist.iterator();
		Double shoppingcartotalprice=0.0;
		 while (shoppingprice.hasNext()) 
	        {  
			 shoppingcartotalprice=shoppingcartotalprice+shoppingprice.next().getTotalprice();
	        }
		request.getSession().setAttribute("shoppingcartotalprice", shoppingcartotalprice);
		request.getSession().setAttribute("shoppingcarlist", shoppingcarlist);
		/*request.setAttribute("shoppingcartotalprice", shoppingcartotalprice);
		request.setAttribute("shoppingcarlist", shoppingcarlist);*/

		model.addAttribute(shoppingcartotalprice);
		model.addAttribute(shoppingcarlist);
		return"/shoppingcar2.jsp";
	}
}
