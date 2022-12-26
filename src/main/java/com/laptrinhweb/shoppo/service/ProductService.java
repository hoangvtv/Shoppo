package com.laptrinhweb.shoppo.service;

import com.laptrinhweb.shoppo.entity.Product;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface ProductService {
	boolean saveProduct(Product product);
	List<Product> getAllActiveProducts();
	List<Product> getProducts(Pageable pageable);
	public Product getProductByCode(String code);
	List<Product> searchProducts(String name);
	void updateProductByCode(String name, String description, String imageData, double mrpPrice, double price, boolean active, String code);
}
