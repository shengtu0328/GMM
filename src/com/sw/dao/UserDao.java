package com.sw.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sdo.entity.Goods;
import com.sdo.entity.User;
@Repository
public interface UserDao {
	public void save(User user);
	
	public User selectUserByName(String username);
	
	public String selectPasswordByName(String name);
	
	
	public int selectwhobyName(String name);
	
	public void deleteById(int id);
	
	/*public void modifyById(int )*/
	
	public List<User> selectAll();
	
	
}
