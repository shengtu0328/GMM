package com.sdo.seckill.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.sdo.entity.Seckill;
import com.sdo.seckill.dto.Exposer;
import com.sdo.seckill.dto.SeckillExecution;
import com.sdo.seckill.dto.SeckillResult;
import com.sdo.seckill.enums.SeckillStatEnum;
import com.sdo.seckill.exception.RepeatKillException;
import com.sdo.seckill.exception.SeckillCloseException;
import com.sdo.seckill.service.SeckillService;

@Controller
@RequestMapping("/seckill")//url:模块/资源/{}/细分
public class SeckillController {

	@Autowired
    private SeckillService seckillService;
	
	 @RequestMapping(value = "/list",method = RequestMethod.GET)
	    public String list(Model model)
	    {
	        //list.jsp+mode=ModelAndView
	        //获取列表页
	        List<Seckill> list=seckillService.getSeckillList();
	        model.addAttribute("list",list);
	        return "list";
	    }
	 
	 @RequestMapping(value = "/{seckillId}/detail",method = RequestMethod.GET)
	    public String detail(@PathVariable("seckillId") Long seckillId, Model model)
	    {
	        if (seckillId == null)
	        {
	            return "redirect:/seckill/list";
	        }

	        Seckill seckill=seckillService.getById(seckillId);
	        if (seckill==null)
	        {
	            return "forward:/seckill/list";
	        }

	        model.addAttribute("seckill",seckill);

	        return "detail";
	    }

	 //ajax ,json暴露秒杀接口的方法
	  /*  @RequestMapping(value = "/{seckillId}/exposer",
	                    method = RequestMethod.POST,
	                    produces = {"application/json;charset=UTF-8"})
	    @ResponseBody
	    public SeckillResult<Exposer> exposer( @PathVariable("seckillId")Long seckillId)
	    {
	        SeckillResult<Exposer> result;
	        try{
	            Exposer exposer=seckillService.exportSeckillUrl(seckillId);
	            result=new SeckillResult<Exposer>(true,exposer);
	        }catch (Exception e)
	        {
	            e.printStackTrace();
	            result=new SeckillResult<Exposer>(false,e.getMessage());
	        }

	        return result;
	    }*/
	 
	  @RequestMapping(value = "/{seckillId}/exposer")
@ResponseBody
public String exposer( @PathVariable("seckillId")Long seckillId)
{
		  
		 ObjectMapper aaa=new  ObjectMapper();
		String aa=null;
  SeckillResult<Exposer> result;
  try{
      Exposer exposer=seckillService.exportSeckillUrl(seckillId);
      result=new SeckillResult<Exposer>(true,exposer);
      aa = aaa.writeValueAsString(result);
      
  }catch (Exception e)
  {
      e.printStackTrace();
      result=new SeckillResult<Exposer>(false,e.getMessage());
      try {
		aa = aaa.writeValueAsString(result);
	} catch (JsonProcessingException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}
  }

  return aa;
}
	    
	    /*@RequestMapping(value = "/{seckillId}/{md5}/execution",
	            method = RequestMethod.POST,
	            produces = {"application/json;charset=UTF-8"})
	    @ResponseBody
	    public SeckillResult<SeckillExecution> execute(@PathVariable("seckillId") Long seckillId,
	                                                   @PathVariable("md5") String md5,
	                                                   @CookieValue(value = "killPhone",required = false) String phone)
	    {
	        if (phone==null)
	        {
	            return new SeckillResult<SeckillExecution>(false,"未注册");
	        }
	        SeckillResult<SeckillExecution> result;

	        try {
	            SeckillExecution execution = seckillService.executeSeckil(seckillId, phone, md5);
	            return new SeckillResult<SeckillExecution>(true, execution);
	        }catch (RepeatKillException e1)
	        {
	            SeckillExecution execution=new SeckillExecution(seckillId, SeckillStatEnum.REPEAT_KILL);
	            return new SeckillResult<SeckillExecution>(false,execution);
	        }catch (SeckillCloseException e2)
	        {
	            SeckillExecution execution=new SeckillExecution(seckillId, SeckillStatEnum.END);
	            return new SeckillResult<SeckillExecution>(false,execution);
	        }
	        catch (Exception e)
	        {
	            SeckillExecution execution=new SeckillExecution(seckillId, SeckillStatEnum.INNER_ERROR);
	            return new SeckillResult<SeckillExecution>(false,execution);
	        }

	    }*/
	  
	  @RequestMapping(value = "/{seckillId}/{md5}/execution")
	    @ResponseBody
	    public String execute(@PathVariable("seckillId") Long seckillId,
	                                                   @PathVariable("md5") String md5,
	                                                   @CookieValue(value = "username",required = false) String phone) throws JsonProcessingException
	    {
	       /* if (phone==null)
	        {
	            return new SeckillResult<SeckillExecution>(false,"未注册");
	        }*/
	        SeckillResult<SeckillExecution> result;
	        ObjectMapper aaa=new  ObjectMapper();
			String aa=null;
	        try {
	            SeckillExecution execution = seckillService.executeSeckil(seckillId, phone, md5);
	            return aaa.writeValueAsString(new SeckillResult<SeckillExecution>(true, execution));
	        }catch (RepeatKillException e1)
	        {
	            SeckillExecution execution=new SeckillExecution(seckillId, SeckillStatEnum.REPEAT_KILL);
	            return aaa.writeValueAsString(new SeckillResult<SeckillExecution>(true,execution));
	        }catch (SeckillCloseException e2)
	        {
	            SeckillExecution execution=new SeckillExecution(seckillId, SeckillStatEnum.END);
	            return aaa.writeValueAsString(new SeckillResult<SeckillExecution>(true,execution));
	        }
	        catch (Exception e)
	        {
	            SeckillExecution execution=new SeckillExecution(seckillId, SeckillStatEnum.INNER_ERROR);
	            return aaa.writeValueAsString(new SeckillResult<SeckillExecution>(true,execution));
	        }

	    }

	    //获取系统时间
	   /* @ResponseBody
	    @RequestMapping(value = "/time/now",method = RequestMethod.GET)
	    public SeckillResult<Long> time()
	    {
	        Date now=new Date();
	        return new SeckillResult<Long>(true,now.getTime());
	    }*/
	
	    
	    //获取系统时间
	   @RequestMapping(value = "/time/now",method = RequestMethod.GET)
	    @ResponseBody
	    public String time()
	    {
	        Date now=new Date();
	        
	        ObjectMapper aaa=new  ObjectMapper();
			String aa=null;
			try {
				aa = aaa.writeValueAsString(new SeckillResult<Long>(true,now.getTime()));
			} catch (JsonProcessingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return aa;
	    }
}
