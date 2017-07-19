package com.sw.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.sdo.entity.Goods;
import com.sdo.entity.Page;
import com.sw.dao.GoodsDao;
import com.sw.dao.UserDao;
import com.sw.service.GoodsService;
import com.sw.service.UserService;

import jdbc.DbUtils;



@Controller
@RequestMapping("goods" )
public class GoodsController {
    
	@Resource
	HttpServletRequest request;
	

	@Resource
	GoodsService gs;
	
/*	@RequestMapping("/querryallaccounts")
	public String querryallaccounts()
	{   
		gs.
		return"";
	}
	*/
	@RequestMapping("/addgoods")
	public String addgoods(@RequestParam("goods") Goods goods, @RequestParam("imageFile") MultipartFile imageFile, HttpServletRequest request)
	{ 
		
		String uploadUrl = "E:\\workspace\\DNSSMWebProject\\WebContent\\picture \\";
		String filename = imageFile.getOriginalFilename();
		File dir = new File(uploadUrl);
		if (!dir.exists()) {
			dir.mkdirs();
		}
		
		File targetFile = new File(uploadUrl + filename);
		if (!targetFile.exists()) {
			try {
				targetFile.createNewFile();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		try {
			imageFile.transferTo(targetFile);//transferTo（dest）方法将上传文件写到服务器上指定的文件。
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		goods.setPicture(uploadUrl + filename);
	    gs.addgoods(goods);
		return"/goods/querryallgoodsbycategoryPage2.htm";
	}
	
	@RequestMapping("/querryaccounts")
	public String querryallaccounts()
	{   
		List<Goods> ld=new ArrayList<Goods>();
		ld=gs.querryallaccounts();
		request.setAttribute("list",ld);
		return "/querryaccounts.jsp";
	}
	
	@RequestMapping("/querryallgoodsbycategoryPage2")
	public String querryallgoodsbycategoryPage2()
	{   
		String zhuye=request.getParameter("zhuye");
		int category=Integer.valueOf(request.getParameter("category"));
		int currentPage = 1;
		int pageSize = 5;
		if(!DbUtils.isEmpty(request.getParameter("pageSize"))) ///传了一个表  但只需要判断传的pagenum 只用这个参数  table里的东西不是 不会传
		{  
			System.out.println("进入是否为空判断");
			pageSize  = Integer.valueOf(request.getParameter("pageSize"));
		}
		if(!DbUtils.isEmpty(request.getParameter("pageNum"))) ///传了一个表  但只需要判断传的pagenum 只用这个参数  table里的东西不是 不会传
		{  
			System.out.println("进入是否为空判断");
			currentPage = Integer.valueOf(request.getParameter("pageNum"));
		}
		Page page= gs.querryallgoodsbycategoryPage2(category,currentPage,pageSize);
		request.setAttribute("page", page);//pageSize cuurrentPage是参数传的 list是数据库表查询的
		if(zhuye!=null)
		{   
			return"/homepage.jsp";
		}
	    return"/querryaccounts.jsp";
	}
	
	
	
	
	
	
	
	
	@RequestMapping("/querryallgoodsbyPager")
	public String querryallacountsbyPage()
	{   
		String zhuye=request.getParameter("zhuye");
		int category=Integer.valueOf(request.getParameter("category"));
		int currentPage = 1;
		int pageSize = 5;
		if(!DbUtils.isEmpty(request.getParameter("pageSize"))) ///传了一个表  但只需要判断传的pagenum 只用这个参数  table里的东西不是 不会传
		{  
			System.out.println("进入是否为空判断");
			pageSize  = Integer.valueOf(request.getParameter("pageSize"));
		}
		if(!DbUtils.isEmpty(request.getParameter("pageNum"))) ///传了一个表  但只需要判断传的pagenum 只用这个参数  table里的东西不是 不会传
		{  
			System.out.println("进入是否为空判断");
			currentPage = Integer.valueOf(request.getParameter("pageNum"));
		}
	/*	if(!DbUtils.isEmpty(request.getParameter("pageSize"))) ///传了一个表  但只需要判断传的pagenum 只用这个参数  table里的东西不是 不会传
		{  
			System.out.println("进入是否为空判断");
			pageSize = Integer.valueOf(request.getParameter("pageSize"));
			Pager<Employee> pager = new Pager<Employee>();
			try {
				pager = employeeDao.getPagerBySql(currentPage, pageSize);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("pager", pager);
			request.getRequestDispatcher("/employee/xiugaiemployee.jsp").forward(request, response);
		    return;
		}*/
		
		
		Page<Goods> page= gs.querryallgoodsbyPage(pageSize,currentPage,category);
		request.setAttribute("page", page);//pageSize cuurrentPage是参数传的 list是数据库表查询的
		if(zhuye!=null)
		{   
			return"/homepage.jsp";
		}
	    return"/querryaccounts.jsp";
	}
	

	@RequestMapping("/deleteaccountbyPager")
	public String deleteaccountbyPager()
	{  
		int currentPage = 1;
	    int pageSize = 5;
	    if(!DbUtils.isEmpty(request.getParameter("pageNum"))) ///传了一个表  但只需要判断传的pagenum 只用这个参数  table里的东西不是 不会传
	    {  
		System.out.println("进入是否为空判断");
		currentPage = Integer.valueOf(request.getParameter("pageNum"));
	    }
	    
	    if(!DbUtils.isEmpty(request.getParameter("idd"))){
			String id = request.getParameter("idd");
			gs.detelebyID(Integer.valueOf(id));
	    }
        Page<Goods> pager= gs.querryallgoodsbycategoryPage2(pageSize,currentPage,1);
	    request.setAttribute("pager", pager);//pageSize cuurrentPage是参数传的 list是数据库表查询的
        return"/deleteaccount.jsp";
		
	}
	
	
	
	
	@RequestMapping("/modifyaccountbyPager")
	public String modifyaccountbyPager(Goods gds)
	{  
		/*if(!DbUtils.isEmpty(request.getParameter("modifyId")))
		{   String modifyid = request.getParameter("modifyId");
		    Goods goods1=gs.selectaccountbyId(Integer.valueOf(modifyid));
		    request.setAttribute("goods", goods1);
		    return"/accountdetail.jsp";
		}
		*/
		
		if(!DbUtils.isEmpty(request.getParameter("detailId")))
		{   
			/*String t=request.getParameter("title");
			String p= request.getParameter("price");
			String e=request.getParameter("else1");
			String cid=request.getParameter("category_id");
            String gid=request.getParameter("detailId");
			Goods g=new Goods();
			g.setTitle(t);
			g.setPrice(Double.valueOf(p));
			g.setElse1(e);
			g.setGoodsid(Integer.valueOf(gid));
			g.setCategory_id(Integer.valueOf(cid));*/
			System.out.println("获得修改的内容");
			gs.modifygoods(gds);
		}	
		int currentPage = 1;
	    int pageSize = 5;
	    
	    if(!DbUtils.isEmpty(request.getParameter("pageNum"))) ///传了一个表  但只需要判断传的pagenum 只用这个参数  table里的东西不是 不会传
	    {  
		System.out.println("进入是否为空判断");
		currentPage = Integer.valueOf(request.getParameter("pageNum"));
	    }
        Page<Goods> pager= gs.querryallgoodsbycategoryPage2(pageSize,currentPage,1);
	    request.setAttribute("pager", pager);//pageSize cuurrentPage是参数传的 list是数据库表查询的
        return"/modifyaccount.jsp";
	}
	
	@RequestMapping("/accountdetial")
	public String accountdetial()
	{  
		if(!DbUtils.isEmpty(request.getParameter("modifyId")))
		{   
		    String modifyid = request.getParameter("modifyId");
		    Goods goods1=gs. selectgoodsbyId(Integer.valueOf(modifyid));
		    request.setAttribute("goods", goods1);
		    return"/accountdetail.jsp";
		}
		else
			return"/biexiajbdian.jsp";
	}
	
	@RequestMapping("/querryallgoods")
	public String querryallgoods()
	{   
		 int currentPage = 1;
	     int pageSize = 8;
	     if(!DbUtils.isEmpty(request.getParameter("pageNum"))) ///传了一个表  但只需要判断传的pagenum 只用这个参数  table里的东西不是 不会传
		    {  
			System.out.println("进入是否为空判断");
			currentPage = Integer.valueOf(request.getParameter("pageNum"));
		    }
	 	if(!DbUtils.isEmpty(request.getParameter("pageSize"))) ///传了一个表  但只需要判断传的pagenum 只用这个参数  table里的东西不是 不会传
		{  
			System.out.println("进入是否为空判断");
			pageSize  = Integer.valueOf(request.getParameter("pageSize"));
		}
	     
	     Page page=gs.querryallgoods(pageSize, currentPage);
	     request.setAttribute("page", page);
		 return"homepage";
	}
	
	
	@RequestMapping(value="/goodsdetail",method=RequestMethod.GET)
	public String goodsdetail(@RequestParam("goodsid") int goodsid )
	{   
			int category_id=Integer.valueOf(request.getParameter("category_id"));
	        if(request.getParameter("shoppingcarnums")!=null)
	        {
	        	int shoppingcarnums=Integer.valueOf(request.getParameter("shoppingcarnums"));
	        }
			Goods goods=gs.selectgoodsbyId(goodsid);
			/*request.setAttribute("shoppingcarnums", shoppingcarnums);*/
			request.setAttribute("goods", goods);
			if(category_id==1)
			{   
				return"/buyaccountdetail.jsp";
			}
			else if(goods.getCategoryid()==2)
			{   
				return"/buygolddetail.jsp";
			}
			else if(goods.getCategoryid()==3)
			{
				return"/buyequipment.jsp";
			}
		return null;
	}
	
	@RequestMapping(value="/oneUpload",method=RequestMethod.POST)
	public String oneUpload(@RequestParam("imageFile") MultipartFile imageFile, HttpServletRequest request){

//		String uploadUrl = request.getSession().getServletContext().getRealPath("/") + "upload/";
		String uploadUrl = "E:\\workspace\\DNSSMWebProject\\WebContent\\upload\\";
		String filename = imageFile.getOriginalFilename();
		File dir = new File(uploadUrl);
		if (!dir.exists()) {
			dir.mkdirs();
		}
		
		File targetFile = new File(uploadUrl + filename);
		if (!targetFile.exists()) {
			try {
				targetFile.createNewFile();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		try {
			imageFile.transferTo(targetFile);//transferTo（dest）方法将上传文件写到服务器上指定的文件。
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "/goods/querryallgoodsbycategoryPage2.htm";
	}

}
