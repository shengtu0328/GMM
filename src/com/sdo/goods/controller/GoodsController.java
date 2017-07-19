package com.sdo.goods.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.sdo.entity.Autocomplete;
import com.sdo.entity.GameArea;
import com.sdo.entity.GameOccupation;
import com.sdo.entity.Goods;
import com.sdo.entity.PageParams;
import com.sdo.entity.ShoppingCar;
import com.sdo.entity.json.JSONHelper;
import com.sdo.goods.service.GameService;
import com.sdo.goods.service.GoodsService;

@Controller
@RequestMapping("/goods")
public class GoodsController 
{   
	@Resource
	private GameService gameService;
	
	@Resource
	private GoodsService  goodsService;
	
	@RequestMapping("/add")
	public ModelAndView add(String category,Goods account,Goods gold,Goods equipment)
	{   
		return new ModelAndView("iwanttosale")
			    .addObject("account", account)
			    .addObject("gold", gold)
			    .addObject("equipment", equipment)
		        .addObject("gameAreaList", gameService.getAllGameAreas())
		        .addObject("gameOccupationList", gameService.getAllGameOccupations());
	}
	
	@RequestMapping("/save")
	public ModelAndView save(Goods goods,@RequestParam("file") MultipartFile multipartFile,HttpSession session) throws IOException
	{   
		if(!multipartFile.isEmpty())
		{   
			String imageName=System.currentTimeMillis()+".jpg";/*E:\\eclipse-mars-workspace   D:\\学习\\eclipseworkspace*/
			FileUtils.copyInputStreamToFile(multipartFile.getInputStream(), new File("E:\\eclipse-mars-workspace\\GMM\\WebContent\\upload",imageName));
			goods.setImage("/upload/"+imageName);
		}
		goods.setSeller((String) session.getAttribute("username"));
		goodsService.save(goods);
		return new ModelAndView("savesuccess");
	}

	@RequestMapping("/index")
	public ModelAndView index(Goods goods)
	{   int offset=0;
	    int limit=8;
	    
		return new ModelAndView("index")
			    .addObject("accountList", goodsService.querryByCategoryByPage(1,offset,limit))
			    .addObject("goldList", goodsService.querryByCategoryByPage(2,offset,limit))
			    .addObject("equipemntList", goodsService.querryByCategoryByPage(3,offset,limit));
	}
	
/*	@RequestMapping("/search/{categoryId}")
	public ModelAndView search2(Goods goods,@PathVariable("categoryId") int categoryId )
	{   
		
		int totalRows = goodsService.getTotalRows(categoryId);
		goods.getPm().setTotalRows(totalRows);
		int offset=goods.getPm().getStart();
		goods.getPm().setPageSize(12);
		int limit=goods.getPm().getPageSize();
		return new ModelAndView("search")
			    .addObject("goodsList", goodsService.querryByCategoryByPage(categoryId,offset,limit))
		        .addObject("goods",goods)
		        .addObject("categoryId",categoryId);
	}*/
	
	@RequestMapping("/search")
	public ModelAndView search(Goods goods)
	{  
		
		return new ModelAndView("search")
		        .addObject("goods",goods)
		        .addObject("goodsList",goodsService.querryByPage(goods));	           
	}
	
	@RequestMapping("/detail/{goodsId}")
	public ModelAndView detail(@PathVariable("goodsId") int goodsId )
	{   
		
		
		Goods goods = goodsService.getDetail(goodsId);
		Integer categoryId = goods.getCategoryId();
		if(categoryId==1)
	    return new ModelAndView("accountDetail")
	    		.addObject("goods",goods);
		else if(categoryId==2)
		return new ModelAndView("goldDetail")
				.addObject("goods",goods);
		else if(categoryId==3)
		return new ModelAndView("equipmentDetail")
				.addObject("goods",goods);
		else 
		return null;
	
				
	}

     
	  @ResponseBody
	  @RequestMapping("/getGoodsByGoodsId")
	  public String getGoodsByGoodsId(Integer goodsId)
	  { 
		Goods goods = goodsService.getDetail(goodsId);
		return String.valueOf(goods.getGoodsNums());
	  }
	  
	  
	  @RequestMapping("/searchByCondition")
	  public ModelAndView searchByCondition(Goods goods)
	  { 
		List<Goods> goodsList = goodsService.searchByCondition(goods);
		return new ModelAndView("search").addObject("goodsList",goodsList);
	  }
	  
	  @ResponseBody
	  @RequestMapping("/auto")
	  public void auto(HttpServletRequest request, HttpServletResponse response, Autocomplete autocomplete)
	  {  
		  String trem = request.getParameter("trem");// 重新解析参数
		  List autoList =goodsService.getAutoList(trem);
		  String labelFields = autocomplete.getLabelField();//文本对应的实体字段
		  String[] fieldArr = labelFields.split(",");
		  String valueField = autocomplete.getValueField();
		  String[] allFieldArr = null;
			if (valueField!=null) {
				allFieldArr = new String[fieldArr.length+1];
				for (int i=0; i<fieldArr.length; i++) {
					allFieldArr[i] = fieldArr[i];
				}
				allFieldArr[fieldArr.length] = valueField;
			}
			try {
				response.setContentType("application/json;charset=UTF-8");
				response.setHeader("Pragma", "No-cache");
				response.setHeader("Cache-Control", "no-cache");
				response.setDateHeader("Expires", 0);
				response.getWriter().write(JSONHelper.listtojson(allFieldArr,allFieldArr.length,autoList));
				response.getWriter().flush();
				response.getWriter().close();
			} catch (Exception e1) {
				e1.printStackTrace();
			}
		  
	  }
	  
	  @ResponseBody
	  @RequestMapping("/offshelve")
	  public String offshelve(Goods goods)
	  { 
		int row=goodsService.changeGoodsState(goods);
		if(row>0)
		{
			return"success";
		}
		return  null;
	  }
	  
	  
}
