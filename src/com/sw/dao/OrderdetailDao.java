package com.sw.dao;

import com.sdo.entity.Order;
import com.sdo.entity.Orderdetail;

public interface OrderdetailDao {
    public void writeorderdetail(Orderdetail orderdetail);
    public void finishorderdetail(Order order);
    public int selectmaxorderdetailid();
    public void modifyorderdetailstate(Orderdetail orderdetail);
}
