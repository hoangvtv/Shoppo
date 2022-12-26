package com.laptrinhweb.shoppo.service.Impl;

import com.laptrinhweb.shoppo.entity.Cart;
import com.laptrinhweb.shoppo.entity.User;
import com.laptrinhweb.shoppo.repositories.CartRepository;
import com.laptrinhweb.shoppo.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CartServiceImpl implements CartService {
	
	@Autowired
	private CartRepository cartRepository;

	@Override
	public List<Cart> getCartItemsByCustomerId(User customer) {
		return cartRepository.findCartItemsByCustomer(customer);
	}

	@Override
	public void removeCartItems(User customer, Long id) {
		cartRepository.deleteCartItems(customer, id);
	}

	@Override
	public void removeCartItem(Long id) {
		cartRepository.deleteCartItem(id);
	}

	@Override
	public void saveCartItems(List<Cart> cartsItems) {
		cartRepository.saveAll(cartsItems);
	}

	@Override
	public void saveCart(Cart cart) {
		cartRepository.save(cart);
	}

}
