package com.sdo.seckill.test;

import static org.junit.Assert.*;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.sdo.entity.Seckill;
import com.sdo.seckill.dao.SeckillDao;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(("classpath:applicationContext.xml"))
public class SeckillDaoTest {
    
	@Resource
	private SeckillDao seckillDao;
	


	@Test
	public void testQuerryById() {
		long id=1000;
		Seckill sSeckill = seckillDao.querryById(id);
		System.out.println(sSeckill.getName());
		System.out.println(sSeckill);
	}

	@Test
	public void testReduceNumber() {
		/*2017-04-04 09:39:45,626[main]%-%5p [main] - JDBC Connection [com.mchange.v2.c3p0.impl.NewProxyConnection@6a57ae10] will not be managed by Spring
		2017-04-04 09:39:45,674[main]%-%5p [main] - ==>  Preparing: update gmm_seckill set number=number-1 where seckill_id=? and start_time <= ? and end_time >=? and number>0; 
		2017-04-04 09:39:45,718[main]%-%5p [main] - ==> Parameters: 1000(Long), 2017-04-04 09:39:45.567(Timestamp), 2017-04-04 09:39:45.567(Timestamp)
		2017-04-04 09:39:45,720[main]%-%5p [main] - <==    Updates: 0
		2017-04-04 09:39:45,720[main]%-%5p [main] - Closing non transactional SqlSession [org.apache.ibatis.session.defaults.DefaultSqlSession@11d8ae8b]
		2017-04-04 09:39:45,720[main]%-%5p [main] - Returning JDBC Connection to DataSource
		2017-04-04 09:39:45,720[main]%-%5p [main] - trace com.mchange.v2.resourcepool.BasicResourcePool@710c2b53 [managed: 30, unused: 29, excluded: 0] (e.g. com.mchange.v2.c3p0.impl.NewPooledConnection@3e38f3f6)
		0*/
		Date killTime = new Date();
		int reduceNumber = seckillDao.reduceNumber(1000, killTime);
		System.out.println(reduceNumber);
	}

	@Test
	public void testQuerryAll() {
	/*	Seckill [seckillId=1000, name=100元秒杀359, number=100, createTime=Mon Apr 03 14:31:02 CST 2017, startTime=Sat Apr 01 00:00:00 CST 2017, endTime=Sat Apr 01 00:00:00 CST 2017]
				Seckill [seckillId=1001, name=20元秒杀温泉套, number=200, createTime=Mon Apr 03 14:31:02 CST 2017, startTime=Sat Apr 01 00:00:00 CST 2017, endTime=Sat Apr 01 00:00:00 CST 2017]
				Seckill [seckillId=1002, name=10元秒杀30格子背包, number=300, createTime=Mon Apr 03 14:31:02 CST 2017, startTime=Sun Apr 16 00:00:00 CST 2017, endTime=Mon Apr 17 00:00:00 CST 2017]
				Seckill [seckillId=1003, name=10元秒杀30格子仓库, number=400, createTime=Mon Apr 03 14:31:02 CST 2017, startTime=Sun Apr 16 00:00:00 CST 2017, endTime=Mon Apr 17 00:00:00 CST 2017]*/
		List<Seckill> SeckillList = seckillDao.querryAll(0, 100);
		for (Seckill seckill : SeckillList) {
			System.out.println(seckill);
		}
	}

}
