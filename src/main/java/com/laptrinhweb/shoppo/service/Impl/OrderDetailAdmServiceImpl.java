package com.laptrinhweb.shoppo.service.Impl;

import com.laptrinhweb.shoppo.entity.OrderDetail;
import com.laptrinhweb.shoppo.repositories.OrderDetailRepository;
import com.laptrinhweb.shoppo.service.OrderDetailAdmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class OrderDetailAdmServiceImpl implements OrderDetailAdmService
{
	@Autowired
	OrderDetailRepository orderDetRepo;
	
	@Override
	public List<OrderDetail> getAllOrderDetail()
	{
		return orderDetRepo.findAll();
	}

	@Override
	public Optional<OrderDetail> getOrderDetailId(Long pid)
	{
		return orderDetRepo.findById(pid);
	}

	@Override
	public void deleteOrderDetail(Long pid) 
	{
		orderDetRepo.deleteById(pid);
	}

	@Override
	public List<OrderDetail> getOrdersByStatus(String orderStatus) {
		return orderDetRepo.findOrdersByStatus(orderStatus);
	}

	@Override
	public List<OrderDetail> getAllOrders() {
		return orderDetRepo.findAllOrders();
	}

	@Override
	public List<OrderDetail> getTop10Orders(String orderStatus, Pageable pageable) {
		return orderDetRepo.findTop10OrdersByStatus(orderStatus, pageable);
	}

}
