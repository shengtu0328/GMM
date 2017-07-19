package com.sw.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sdo.entity.Goods;
import com.sdo.entity.Page;
import com.sdo.entity.User;
import com.sun.prism.paint.Paint;
import com.sw.dao.UserDao;
import com.sw.service.GoodsService;
import com.sw.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	@Resource
	UserService us;
	
	@Resource
	GoodsService gs;
	

	@Resource
	HttpServletRequest request;
	
	@Resource
	HttpServletResponse response;
	
	@RequestMapping("/userlogin")
	public String userlogin() throws UnsupportedEncodingException
	{   
		String username = request.getParameter("username");
	    String password = request.getParameter("password");
	 /*   int a=Integer.valueOf(password);
	  * 
	  *    int b=Integer.parseInt(username);
	  * 
	    */
	   
	    System.out.println(username);
	    String[] rememberPassAr=request.getParameterValues("rememberPass");
		/*String userNameC = URLEncoder.encode(username, "UTF-8");*///转码  中文好像会有乱码
		/*Cookie userCookie=new Cookie("username",username);//11111 保存cookie
		Cookie passCookie=new Cookie("password",password);
		if(rememberPassAr!=null)
		{
			System.out.println("选中10天免登录判断");
		passCookie.setMaxAge(10*60*60*24);
		response.addCookie(userCookie);
		response.addCookie(passCookie);//返回给客户端
		}
		else
		{    System.out.println("没选中10天免登录判断");
			//passCookie.setValue("");
	    passCookie.setMaxAge(0);
	    System.out.println(passCookie);
	    userCookie.setMaxAge(0);
		}*/
	   
	    User u=us.login(username);
	    
	    System.out.println(1111111111);
	  
	    if(u==null)
	    {   
	    	System.out.println("u==nul");
	    	request.setAttribute("tips", "用户名不存在");
	    	return"/login.jsp";
	    }
	    else 
	    {
	      int who=u.getWho();
		  String p= u.getPassword();
	      if(p.equals(password)&&who==0)
	      {   
	    	Cookie userCookie=new Cookie("username",username);//11111 保存cookie
			Cookie passCookie=new Cookie("password",password);
			if(rememberPassAr!=null)
			{
				System.out.println("选中10天免登录判断");
			passCookie.setMaxAge(10*60*60*24);
			response.addCookie(userCookie);
			response.addCookie(passCookie);//返回给客户端
			}
			else
			{    System.out.println("没选中10天免登录判断");
				//passCookie.setValue("");
		    passCookie.setMaxAge(0);
		    System.out.println(passCookie);
		    userCookie.setMaxAge(0);
			}
	    	request.getSession().setAttribute("username", username);
	    	return "/goods/querryallgoods.htm";
	    	  
	    	 /* 
	    	  int currentPage = 1;
		      int pageSize = 5;
		      Pager pager=gs.querryallgoods(pageSize, currentPage);
		      request.setAttribute("pager", pager);
	    	  return"/homepage.jsp";*/
	      }
	      else if (p.equals(password)&&who==1)
	      {    
		    	Cookie userCookie=new Cookie("username",username);//11111 保存cookie
				Cookie passCookie=new Cookie("password",password);
				if(rememberPassAr!=null)
				{
					System.out.println("选中10天免登录判断");
				passCookie.setMaxAge(10*60*60*24);
				response.addCookie(userCookie);
				response.addCookie(passCookie);//返回给客户端
				}
				else
				{    System.out.println("没选中10天免登录判断");
					//passCookie.setValue("");
			    passCookie.setMaxAge(0);
			    System.out.println(passCookie);
			    userCookie.setMaxAge(0);
				}
	            return "/background.jsp";
	      }
	      else
	        request.setAttribute("tips", "密码错误");
		    return"/login.jsp";
	    }
	}
	
	
	
	@RequestMapping("/userregister")

	public String userregister(User u)
	{  /* 
		String username = request.getParameter("username");
	    String password = request.getParameter("password");
	    String telephone = request.getParameter("telephone");
	    String email = request.getParameter("email");
		String name = request.getParameter("name");
	    User  u=new User();
		u.setUsername(username);
        u.setPassword(password);
        u.setTelephone(telephone);
        u.setEmail(email);
        u.setName(name);
        u.setWho(0);*/
		System.out.println(u.getUsername());
		System.out.println(u.getEmail());
		System.out.println(u.getPassword());
		System.out.println(u.getTelephone());
		System.out.println(u.getName());
		if(u.getUsername()==null||u.getPassword().equals("")||u.getEmail()==""||u.getPassword()==null||u.getTelephone()==null||u.getName()==null)
		{
			System.out.println("注册信息为空");
        return"/userregister.jsp";
		}
		else 
		{
			System.out.println("注册信息不为空");
		us.register(u);
    	return"/registersuccess.jsp";
		}
	}
	
	@RequestMapping("zhuxiao")
	public String zhuxiao()
	{   
  	    request.getSession().removeAttribute("username");
  	    /*request.getSession().invalidate();*/
  	    if(request.getSession().getAttribute("username")==null)
  	    {
  	    	System.out.println("username 是null了");
  	    }
  	    if(request.getSession().getAttribute("username")=="")
	    {
	    	System.out.println("username 是     了");
	    }
		return"/goods/querryallgoods.htm";
	}
	
	
	
	@ResponseBody
	@RequestMapping("/ajaxCheckRegister")
	public String ajaxCheck() throws IOException{	
        String username = request.getParameter("username");		
		System.out.println("CheckController");
		return us.ajaxCheck(username);
	}
	
	
}
