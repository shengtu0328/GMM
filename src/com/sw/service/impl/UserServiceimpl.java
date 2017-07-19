package com.sw.service.impl;

import java.io.UnsupportedEncodingException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.sdo.entity.User;
import com.sw.dao.UserDao;
import com.sw.service.UserService;
@Service
public class UserServiceimpl implements UserService{
	@Resource
	UserDao ud;
	
	@Resource
	HttpServletRequest request;
	
	@Override
	public User login(String username )
	{
		return ud.selectUserByName(username);
	}
	@Override
	public void register(User u)
	{
        ud.save(u);
	}
	@Override
	public String ajaxCheck(String username)
	{
		if(username == null || username.length() == 0)
		{ 
              return "1";
        }
        else if(ud.selectPasswordByName(username)==null)
        {    
             return "2";
        }  
        else
        {   
         	 return "3";
        } 
	}
	

}
