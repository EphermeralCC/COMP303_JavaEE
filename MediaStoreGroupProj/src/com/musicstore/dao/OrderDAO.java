package com.musicstore.dao;

import java.util.List;

import com.musicstore.vo.Order;

public interface OrderDAO {
	public List<Order> findAllOrders();

	public List<Order> searchOrderByKeyword(String keyword);

	public void insert(Order order);

	public void update(Order order);

	public void delete(int albumID);
}
