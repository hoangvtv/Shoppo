package com.laptrinhweb.shoppo.service;

import com.laptrinhweb.shoppo.entity.Cart;
import com.laptrinhweb.shoppo.entity.User;

import java.util.List;

public interface CartService {

	void saveCartItems(List<Cart> cartsItems);
	void saveCart(Cart cart);
	List<Cart> getCartItemsByCustomerId(User customer);
	void removeCartItems(User customer, Long id);
	void removeCartItem(Long id);
}
