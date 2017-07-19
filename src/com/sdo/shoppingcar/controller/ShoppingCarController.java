package com.sdo.shoppingcar.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sdo.entity.Goods;
import com.sdo.entity.ShoppingCar;
import com.sdo.goods.service.GoodsService;
import com.sdo.shoppingcar.service.ShoppingCarService;

@Controller
@RequestMapping("/shoppingcar")
public class ShoppingCarController {
	
  @Resource
  private ShoppingCarService shoppingCarService;
  
  @Resource
  private GoodsService  goodsService;
  @ResponseBody
  @RequestMapping("/add")
  public String  add (Goods goods,HttpSession session,Integer selected)
  { 
	
	String username = (String) session.getAttribute("username");
    shoppingCarService.add(goods,username,selected);
	return null;
  }
  
  @ResponseBody
  @RequestMapping("/querrryAndAdd")
  public String  querrryAndAdd (Integer goodsId,HttpSession session)
  { 
	  
	String username = (String) session.getAttribute("username");
	Goods goods = goodsService.getDetail(goodsId);
    shoppingCarService.add(goods,username,1);
	return null;
  }
  
  @ResponseBody
  @RequestMapping("/update")
  public String  update (HttpSession session,ShoppingCar shoppingcar)
  { 
	String username = (String) session.getAttribute("username");
	shoppingcar.setBuyer(username);
    shoppingCarService.update(shoppingcar);
	return null;
  }

  @ResponseBody
  @RequestMapping("/delete")
  public String delete(HttpSession session,ShoppingCar shoppingcar)
  { 
	
	String username = (String) session.getAttribute("username");
	shoppingcar.setBuyer(username);
	shoppingCarService.delete(shoppingcar);
	return null;
  }
  
  @RequestMapping("/show")
  public ModelAndView show(HttpSession session)
  { 
	
	String username = (String) session.getAttribute("username");
    List<ShoppingCar> shoppingcarList = shoppingCarService.show(username);
	return new ModelAndView("shoppingcar")
	        .addObject("shoppingcarList",shoppingcarList);
  }
  
  @ResponseBody
  @RequestMapping("/myShoppingcarCounts")
  public String  myShoppingcarCounts (HttpSession session)
  { if(session.getAttribute("username")!=null)
    {    String username = (String) session.getAttribute("username");
	     return String.valueOf(shoppingCarService.selectCountsByUserName(username));
    }
	else
		return "0";
  }
}
