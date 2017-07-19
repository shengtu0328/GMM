package com.sw.dao;

import java.util.List;

import com.sdo.entity.Order;

public interface OrderDao 
{
    public void writeorder(Order order);
    public void finishorder(Order order);
    public int selectmaxorderid();
    public List<Order> selectmyorder(String username);
}
