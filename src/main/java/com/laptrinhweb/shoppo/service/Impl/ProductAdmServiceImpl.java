package com.laptrinhweb.shoppo.service.Impl;

import com.laptrinhweb.shoppo.entity.Product;
import com.laptrinhweb.shoppo.repositories.ProductAdmRepository;
import com.laptrinhweb.shoppo.service.ProductAdmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class ProductAdmServiceImpl implements ProductAdmService
{
	@Autowired
	ProductAdmRepository productRepo;

	@Override
	public Product storeFile(Product product) {
		return productRepo.save(product);
	}

	@Override
	public Optional<Product> getProductId(Long pid) {
		return productRepo.findById(pid);
	}

	@Override
	public List<Product> getAllProduct() {
		return productRepo.findAll();
	}

	@Override
	public void deleteProduct(Long pid) {
		productRepo.deleteById(pid);
	}

	@Override
	public void deleteAll(List<Product> ids) {

	}

	@Override
	public Long countProduct() {
		return productRepo.count();
	}

}
