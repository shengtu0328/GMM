package com.sdo.user.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdo.entity.Goods;
import com.sdo.entity.Order;
import com.sdo.entity.User;
import com.sdo.user.dao.UserDao;
import com.sdo.user.service.UserService;
import com.sdo.util.CustomerCoder;

import net.sf.json.JSONArray;
@Service
public class UserServiceImpl implements UserService {

 @Autowired
 private CustomerCoder codeGenerator;

	
	
@Resource
UserDao  userDao;

@Override
public void save(User user) {
	// TODO Auto-generated method stub
	  user.setPassword(codeGenerator.encoderMD5(user.getPassword()));
	 userDao.save(user);
	 
}

@Override
public String registerUserNameCheck(String username) {
	User user = userDao.selectUserByUserName(username);
	if(user==null)
		return"0";
	else
		return"1";
}

@Override
public String loginUsernameCheck(User user) {
	User u = userDao.selectUserByUserName(user.getUsername());
	if(u==null)
		return "0";
	else
	{
		if(u.getPassword().equals(codeGenerator.encoderMD5(user.getPassword())))
		return "1";
		else
		return "0";
	}
}

@Override
public String loginSuccess(String username)
{
	if(userDao.selectWhoByUserName(username)!=null)
	{  
		String aa= userDao.selectWhoByUserName(username);
		
		return userDao.selectWhoByUserName(username);
	}
	else
	{
		return null;
	}
	
}

@Override
public List<Order> selectOrderByUsername(String username) {
	// TODO Auto-generated method stub
	return null;
}

@Override
public List<Goods> querryGoodsBySeller(String userName) {
	// TODO Auto-userDao method stub
	return userDao.querryGoodsBySeller(userName);
}

@Override
public User getUserByUsername(String username) {
	// TODO Auto-generated method stub
	return userDao.getUserByUsername(username);
}






}
