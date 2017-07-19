package com.sw.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sdo.entity.ShoppingCar;
import com.sw.dao.OrderDao;
import com.sw.dao.ShoppingcarDao;
import com.sw.service.ShoppingcarService;
@Service
public class ShoppingcarServiceimpl implements ShoppingcarService {
    

	@Resource
	ShoppingcarDao shoppingcardao;
	
	

	@Override
	public List<ShoppingCar>  selectshoppingcar(String username) 
	{
		return shoppingcardao.selectshoppingcar(username);
	}


	@Override
	public int addshoppingcarandselectcountbyusername(ShoppingCar shoppingcar) 
	{	
        shoppingcardao.addshoppingcar(shoppingcar);
        return shoppingcardao.selectcountbyusername(shoppingcar);
	}

}
