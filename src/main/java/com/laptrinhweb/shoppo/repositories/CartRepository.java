package com.laptrinhweb.shoppo.repositories;

import com.laptrinhweb.shoppo.entity.Cart;
import com.laptrinhweb.shoppo.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CartRepository extends JpaRepository<Cart, Long> {

	@Query(value = "select c from Cart c where c.user=?1")
	List<Cart> findCartItemsByCustomer(User user);
	
	@Modifying(clearAutomatically = true)
	@Query(value = "delete from Cart c where c.user=?1 and c.id=?2")
	void deleteCartItems(User user, Long id);
	
	@Modifying(clearAutomatically = true)
	@Query(value = "delete from Cart c where c.id=?1")
	void deleteCartItem(Long id);
	
}
