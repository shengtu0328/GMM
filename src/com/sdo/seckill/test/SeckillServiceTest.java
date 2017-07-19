package com.sdo.seckill.test;

import static org.junit.Assert.*;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.sdo.entity.Seckill;
import com.sdo.seckill.dto.Exposer;
import com.sdo.seckill.dto.SeckillExecution;
import com.sdo.seckill.exception.RepeatKillException;
import com.sdo.seckill.exception.SeckillCloseException;
import com.sdo.seckill.service.SeckillService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(("classpath:applicationContext.xml"))
public class SeckillServiceTest {
    
	@Resource
	SeckillService seckillService;
	
	@Test
	public void testGetSeckillList() {
		List<Seckill> seckillList = seckillService.getSeckillList();
	}

	@Test
	public void testGetById() {
		seckillService.getById(1000);
	}

	@Test
	public void testExportSeckillUrl() {
		long seckillId=1000;
		Exposer exposer = seckillService.exportSeckillUrl(seckillId);
		if(exposer.isExposed())
		{   String md5=exposer.getMd5();
			String username="xrq";
			try{
				SeckillExecution executeSeckil = seckillService.executeSeckil(seckillId, username, md5);

			}
			catch(RepeatKillException e)
			{
				
			}
			catch(SeckillCloseException e)
			{
				
			}
		}
		
	}

	@Test
	public void testExecuteSeckil() {
		
	}

}
