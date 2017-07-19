package com.sdo.seckill.service.impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.apache.log4j.spi.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.DigestUtils;

import com.sdo.entity.Seckill;
import com.sdo.entity.SuccessKilled;
import com.sdo.seckill.dao.SeckillDao;
import com.sdo.seckill.dao.SuccessKilledDao;
import com.sdo.seckill.dao.cache.RedisDao;
import com.sdo.seckill.dto.Exposer;
import com.sdo.seckill.dto.SeckillExecution;
import com.sdo.seckill.enums.SeckillStatEnum;
import com.sdo.seckill.exception.RepeatKillException;
import com.sdo.seckill.exception.SeckillCloseException;
import com.sdo.seckill.exception.SeckillException;
import com.sdo.seckill.service.SeckillService;
@Service
public class SeckillServiceImpl implements SeckillService {
     
	 /*private Logger logger= LoggerFactory.getLogger(this.getClass());*/

	@Resource
	private SeckillDao seckillDao;
	@Resource
	private SuccessKilledDao successKilledDao;
	
    @Autowired
    private RedisDao redisDao;

	
	private final String salt="sadlsdjlaskdkalkdaskda2@";
	
	@Override
	public List<Seckill> getSeckillList() {
		// TODO Auto-generated method stub
		return seckillDao.querryAll(0, 4);
	}

	@Override
	public Seckill getById(long seckillId) {
		// TODO Auto-generated method stub
		return seckillDao.querryById(seckillId);
	}

	@Override
	public Exposer exportSeckillUrl(long seckillId) {
		

        Seckill seckill = redisDao.getSeckill(seckillId);
        if (seckill == null) {
            //2.访问数据库
            seckill = seckillDao.querryById(seckillId);
            if (seckill == null) {//说明查不到这个秒杀产品的记录
                return new Exposer(false, seckillId);
            }else {
                //3,放入redis
                redisDao.putSeckill(seckill);
            }

        }
		Date startTime=seckill.getStartTime();
		Date endTime=seckill.getEndTime();
		Date nowTime=new Date();
		if(nowTime.getTime()<startTime.getTime()||nowTime.getTime()>endTime.getTime())
		{
			return new Exposer(false,seckillId,nowTime.getTime(),startTime.getTime(),endTime.getTime());
		}
		String md5=getMD5(seckillId);
		return new Exposer(true,md5,seckillId);
	}
    
	private String getMD5(long seckillId)
	{
		String base=seckillId+"/"+salt;
		String md5=DigestUtils.md5DigestAsHex(base.getBytes());
		return md5;
	}
	
	
	@Override
	@Transactional
	public SeckillExecution executeSeckil(long seckillId, String username, String md5)
			throws RepeatKillException, SeckillCloseException, SeckillException {
	    if(md5==null||!md5.equals(getMD5(seckillId)))
	    {
	    	throw new SeckillException("seckill data rewrite");
	    }
	    Date nowTime=new Date();
	    int updateCount=seckillDao.reduceNumber(seckillId, nowTime);
	    try{
	    if(updateCount<=0)
	    { //没有跟新
	    	throw new SeckillCloseException("seckill is closed");
	    	
	    }
	    else{
	    	int insertCount=successKilledDao.insertSuccessKilled(seckillId, username);
	    	if(insertCount<=0)
	    	{//重复秒杀
	    		throw new RepeatKillException("seckill repeated");
	    	}
	    	else
	    	{//秒杀成功
	    		SuccessKilled successKilled = successKilledDao.querryByIdWithSeckill(seckillId, username);
	    		return new SeckillExecution(seckillId,SeckillStatEnum.SUCCESS,successKilled);
	    	}
	    }
	    } catch(SeckillCloseException e1)
	    {
	    	throw e1;
	    }
	    catch(RepeatKillException e2)
	    {
	    	throw e2;
	    }
	    catch(Exception e)
	    {
	    	throw new SeckillException("seckill inner error");
	    }
		
	}

}
