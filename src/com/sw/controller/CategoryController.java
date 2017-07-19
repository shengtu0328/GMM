package com.sw.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sdo.entity.Goods;
@Controller
@RequestMapping("category")
public class CategoryController {
	
	
	@RequestMapping("addcategory")
	public String addgoods(Goods goods)
	{ 
		return addgoods(goods);
	}
	
}
