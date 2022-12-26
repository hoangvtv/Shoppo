package com.laptrinhweb.shoppo.service;

import com.laptrinhweb.shoppo.entity.Order;

import java.util.List;
import java.util.Optional;

public interface OrderAdmService
{
	public Optional<Order> getOrderId(Long pid);
	public void deleteOrdersById(Long id);
	public void deleteOrderDetailById(Order orderId);
	public void deleteAll(List<Order> ids);
	void changeOrderStatus(String orderStatus, Long id);	
}
