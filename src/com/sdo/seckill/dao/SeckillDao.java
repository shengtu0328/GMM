package com.sdo.seckill.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sdo.entity.Seckill;

public interface SeckillDao {
/*   减库存，int代表返回执行成功的记录数*/
	int reduceNumber(@Param("seckillId")long seckillId,@Param("killTime")Date killTime);
/*   根据id查询秒杀对象*/
	Seckill querryById(long seckillId);
/*   根据id查询所有秒杀对象集合*/
	List<Seckill> querryAll(@Param("offset")int offset,@Param("limit")int limit);
}
