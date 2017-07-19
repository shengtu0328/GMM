package com.sdo.seckill.service;

import java.util.List;

import com.sdo.entity.Seckill;
import com.sdo.seckill.dto.Exposer;
import com.sdo.seckill.dto.SeckillExecution;
import com.sdo.seckill.exception.RepeatKillException;
import com.sdo.seckill.exception.SeckillCloseException;
import com.sdo.seckill.exception.SeckillException;

public interface SeckillService {
	/*查询所有秒杀记录*/
   List<Seckill> getSeckillList();
   /*   查询单个秒杀商品*/
   Seckill getById(long seckillId);
   /*   秒杀开启输出秒杀接口地址，没开启输出系统时间和秒杀时间*/
   Exposer exportSeckillUrl(long seckillId);
   /* 执行秒杀*/
   SeckillExecution executeSeckil(long seckillId,String username,String md5)throws RepeatKillException,SeckillCloseException,SeckillException;
}
