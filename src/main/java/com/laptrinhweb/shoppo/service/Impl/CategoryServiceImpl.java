package com.laptrinhweb.shoppo.service.Impl;


import com.laptrinhweb.shoppo.entity.Category;
import com.laptrinhweb.shoppo.repositories.CategoryRepository;
import com.laptrinhweb.shoppo.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryRepository categoryRepository;

    @Override
    public List<Category> getAllCategory() {
        return categoryRepository.findAllCategory();
    }
}
