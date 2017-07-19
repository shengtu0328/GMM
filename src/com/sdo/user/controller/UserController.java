package com.sdo.user.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sdo.entity.Goods;
import com.sdo.entity.User;
import com.sdo.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
    
	@Resource
	UserService  userService;
	
	@RequestMapping("/save")
	public ModelAndView save(User user)
	{
		userService.save(user);
		return new ModelAndView("registerSuccess");
	}
	
	@RequestMapping("/register")
	public ModelAndView register(User user)
	{
		
		return new ModelAndView("login");
	}
	
	@RequestMapping("/login")
	public ModelAndView login()
	{
		return new ModelAndView("login");
	}
	/*注册时ajax检验用户名是否存在 */
	@ResponseBody
	@RequestMapping("/registerUserNameCheck")
	public String registerUserNameCheck(String username)
	{
		return userService.registerUserNameCheck(username);
		
	}
	/*登录校验*/
	@ResponseBody
	@RequestMapping("/loginCheck")
	public  String loginCheck(User user)
	{   
		return userService.loginUsernameCheck(user);
	}
	
	/*登录成功后显示的页面*/
	@ResponseBody
	@RequestMapping("/loginSuccess")
	public  String loginSuccess(String username,String password,HttpSession session)
	{   
		session.setAttribute("username", username);
		session.setAttribute("password", password);
		return userService.loginSuccess(username);
	}
	
	@RequestMapping("/myOrder")
	public ModelAndView myOrder(HttpSession session)
	{  String username = (String) session.getAttribute("username");
	    User user = userService.getUserByUsername(username);
		return new ModelAndView("myOrder")
				.addObject("user",user);
	}
	
	@RequestMapping("/myGoods")
	public ModelAndView myGoods(HttpSession session)
	{   String username=(String) session.getAttribute("username");
		List<Goods> goodsList = userService.querryGoodsBySeller(username);
		return new ModelAndView("myGoods")
				.addObject("goodsList",goodsList);
	}
	
/*	@RequestMapping("/personalCenter")
	public ModelAndView personalCenter(HttpSession session)
	{   
		userService.
		return new ModelAndView("personalMainPage");
				
	}
	*/
	@ResponseBody
	@RequestMapping("logoff")
	public String zhuxiao(HttpSession session)
	{   
  	    if(session.getAttribute("username")!=null)
  	    {
  	    	session.removeAttribute("username");
  	    	return"success";
  	    }
		return"fail";
	}
	
	
	
	
}
