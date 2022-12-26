package com.laptrinhweb.shoppo.repositories;

import com.laptrinhweb.shoppo.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductAdmRepository extends JpaRepository<Product, Long> {
}
