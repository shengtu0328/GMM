
CREATE TABLE seckill(
`seckill_id` BIGINT NOT NUll AUTO_INCREMENT COMMENT '商品库存ID',
`name` VARCHAR(120) NOT NULL COMMENT '商品名称',
`number` int NOT NULL COMMENT '库存数量',
`create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`start_time` timestamp NOT NULL COMMENT '秒杀开启时间',
`end_time` timestamp NOT NULL COMMENT '秒杀结束时间',
  PRIMARY KEY (seckill_id),
  key idx_start_time(start_time),
  key idx_end_time(end_time),
  key idx_create_time(create_time)
)ENGINE=INNODB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='秒杀库存表';


CREATE table gmm_success_killed(
 `seckill_id` bigint NOT NULL COMMENT '秒杀商品id',
 `buyer` VARCHAR(120) NOT NULL COMMENT '用户名',
`state` tinyint not NULL DEFAULT -1 COMMENT '状态：-1无效：0成功 1已付款 2已发货',
`create_time` TIMESTAMP NOT NULL COMMENT'创建时间',
PRIMARY KEY(seckill_id,buyer),/*联合主键*/
KEY idx_create_time(create_time)
)ENGINE=INNODB  DEFAULT CHARSET=utf8 COMMENT='秒杀成功订单表';

INSERT into gmm_seckill(name,number,start_time,end_time)
VALUES
('100元秒杀359',100,'2017-4-01 00:00:00','2017-4-01 00:00:00'),
('20元秒杀温泉套',200,'2017-4-01 00:00:00','2017-4-01 00:00:00'),
('10元秒杀30格子背包',300,'2017-4-16 00:00:00','2017-4-17 00:00:00'),
('10元秒杀30格子仓库',400,'2017-4-16 00:00:00','2017-4-17 00:00:00');
