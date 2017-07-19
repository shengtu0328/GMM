package com.sdo.seckill.test;

import static org.junit.Assert.*;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.sdo.entity.SuccessKilled;
import com.sdo.seckill.dao.SeckillDao;
import com.sdo.seckill.dao.SuccessKilledDao;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(("classpath:applicationContext.xml"))
public class SuccessKilledDaoTest {
	@Resource
	private SuccessKilledDao successKilledDao;
	
	
	@Test
	public void testInsertSuccessKilled() {
	/*	-04-04 09:57:46,728[main]%-%5p [main] - ==>  Preparing: insert ignore into gmm_success_killed(seckill_id,username) values(?,?) 
				2017-04-04 09:57:46,787[main]%-%5p [main] - ==> Parameters: 1000(Long), xrq(String)
				2017-04-04 09:57:46,857[main]%-%5p [main] - <==    Updates: 1
				2017-04-04 09:57:46,865[main]%-%5p [main] - Closing non transactional SqlSession [org.apache.ibatis.session.defaults.DefaultSqlSession@59e2d8e3]
				2017-04-04 09:57:46,865[main]%-%5p [main] - Returning JDBC Connection to DataSource
				2017-04-04 09:57:46,865[main]%-%5p [main] - trace com.mchange.v2.resourcepool.BasicResourcePool@5386659f [managed: 30, unused: 29, excluded: 0] (e.g. com.mchange.v2.c3p0.impl.NewPooledConnection@7369c2af)
				insertCount1*/
		int insertCount=successKilledDao.insertSuccessKilled(1002, "xrq");
		System.out.println("insertCount"+insertCount);
	}

	@Test
	public void testQuerryByIdWithSeckill() {
		
		/*com.sdo.entity.SuccessKilled@2a3888c1
		Seckill [seckillId=1000, name=100元秒杀359, number=100, createTime=Mon Apr 03 14:31:02 CST 2017, startTime=Sat Apr 01 00:00:00 CST 2017, endTime=Sat Apr 01 00:00:00 CST 2017]*/
		SuccessKilled successKilled = successKilledDao.querryByIdWithSeckill(1000, "xrq");
		System.out.println(successKilled);
		System.out.println(successKilled.getSeckill());
	}

}
