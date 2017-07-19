package com.sdo.seckill.dto;

import com.sdo.entity.SuccessKilled;
import com.sdo.seckill.enums.SeckillStatEnum;

/*封装秒杀执行后的结果*/
public class SeckillExecution {

	 private long seckillId;
	 
	/* 秒杀结果执行状态*/
	 private int state;
	 
	 /* 秒杀结果状态解释*/
	 private String  stateInfo;
	 
	 /* 秒杀订单*/
	 private SuccessKilled successKilled;
    
	 
	 /* 秒杀成功*/
	public SeckillExecution(long seckillId, SeckillStatEnum seckillStartEnum, SuccessKilled successKilled) {
		super();
		this.seckillId = seckillId;
		this.state = seckillStartEnum.getState();
		this.stateInfo = seckillStartEnum.getStateInfo();
		this.successKilled = successKilled;
	}
	 /* 秒杀失败*/
	public SeckillExecution(long seckillId, SeckillStatEnum seckillStartEnum) {
		super();
		this.seckillId = seckillId;
		this.state = seckillStartEnum.getState();
		this.stateInfo = seckillStartEnum.getStateInfo();
	}




	public long getSeckillId() {
		return seckillId;
	}

	public void setSeckillId(long seckillId) {
		this.seckillId = seckillId;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getStateInfo() {
		return stateInfo;
	}

	public void setStateInfo(String stateInfo) {
		this.stateInfo = stateInfo;
	}

	public SuccessKilled getSuccessKilled() {
		return successKilled;
	}

	public void setSuccessKilled(SuccessKilled successKilled) {
		this.successKilled = successKilled;
	}
	 
	 
}

