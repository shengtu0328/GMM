package com.sdo.seckill.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sdo.entity.SuccessKilled;

public interface SuccessKilledDao {
/*  插入订单明细，可过滤重复*/
	int insertSuccessKilled(@Param("seckillId")long seckillId,@Param("username")String username);
/*  根据id查询SuccessKilled并携带商品实体*/
	SuccessKilled querryByIdWithSeckill(@Param("seckillId")long seckillId,@Param("username")String username);
	
}
