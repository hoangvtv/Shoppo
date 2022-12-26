package com.laptrinhweb.shoppo.service.Impl;

import com.laptrinhweb.shoppo.entity.Order;
import com.laptrinhweb.shoppo.repositories.OrderAdmRepository;
import com.laptrinhweb.shoppo.service.OrderAdmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class OrderAdmServiceImpl implements OrderAdmService
{
	
	@Autowired
	OrderAdmRepository orderAdmRepo;
	
	@Override
	public Optional<Order> getOrderId(Long pid)
	{
		
		return orderAdmRepo.findById(pid);
	}
	
	@Override
	public void deleteOrdersById(Long id)
	{
		orderAdmRepo.deleteOrdersById(id);
	}

	@Override
	public void deleteAll(List<Order> ids)
	{
		
	}

	@Override
	public void changeOrderStatus(String orderStatus, Long id) {
		orderAdmRepo.updateOrderStatusById(orderStatus, id);
		
	}

	@Override
	public void deleteOrderDetailById(Order orderId) {
		orderAdmRepo.deleteOrderDetailById(orderId);	
	}

}
