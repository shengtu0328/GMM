package com.sdo.shoppingcar.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sdo.entity.Goods;
import com.sdo.entity.ShoppingCar;
import com.sdo.shoppingcar.dao.ShoppingCarDao;

import com.sdo.shoppingcar.service.ShoppingCarService;
@Service
public class ShoppingCarServiceImpl implements ShoppingCarService {
   
	@Resource
	private  ShoppingCarDao shoppingCarDao;

	@Override
	/*不仅仅需完成购物车添加的操作，还需要判断当前用户在购物车中是否已经加入该商品，
	 * 而且如果在购物车里的物品数量已经到库存上限，则按库存计算*/
	public int add(Goods goods, String username,Integer selected) {
		ShoppingCar newShoppingcar=new ShoppingCar();
		newShoppingcar.setGoodsId(goods.getGoodsId());
		newShoppingcar.setGoodsTitle(goods.getTitle());
		newShoppingcar.setPrice(goods.getPrice());
		newShoppingcar.setGoodsNums(selected);
		newShoppingcar.setImage(goods.getImage());
		newShoppingcar.setBuyer(username);
		newShoppingcar.setArea(goods.getArea());
		newShoppingcar.setSeller(goods.getSeller());
		ShoppingCar oldShoppingcar = shoppingCarDao.selectShoppingcarByUsernameAndGoodsId(username, goods.getGoodsId());
		if(null!=oldShoppingcar)
		{    
			int newgoodsNums=oldShoppingcar.getGoodsNums()+selected;
			if(newgoodsNums<goods.getGoodsNums())
		     {
			 shoppingCarDao.addGoodsNums(newShoppingcar);
		     }
		     else
		     {
		     oldShoppingcar.setGoodsNums(goods.getGoodsNums());
		     shoppingCarDao.updateGoodsNums(oldShoppingcar);
		     }
		}
		else{
			shoppingCarDao.add(newShoppingcar);
		}
		return 0;
	}

	@Override
	public List<ShoppingCar> show(String username) {
		// TODO Auto-generated method stub
		return shoppingCarDao.show(username);
	}

	@Override
	public int update(ShoppingCar shoppingcar) {
		return shoppingCarDao.updateGoodsNums(shoppingcar);
	}

	@Override
	public int delete(ShoppingCar shoppingcar) {
		return shoppingCarDao.delete(shoppingcar);
	}

	@Override
	public ShoppingCar selectShoppingcarByUsernameAndGoodsId(String username, Integer goodsId) {
		return shoppingCarDao.selectShoppingcarByUsernameAndGoodsId(username, goodsId);
	}

	@Override
	public int selectCountsByUserName(String username) {
		
		return shoppingCarDao.selectCountsByUserName(username);
	}

	
	
}
