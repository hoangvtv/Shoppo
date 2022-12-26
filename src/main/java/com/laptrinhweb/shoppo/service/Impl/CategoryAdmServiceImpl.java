package com.laptrinhweb.shoppo.service.Impl;

import com.laptrinhweb.shoppo.entity.Category;
import com.laptrinhweb.shoppo.repositories.CategoryRepository;
import com.laptrinhweb.shoppo.service.CategoryAdmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;


@Service
@Transactional
public class CategoryAdmServiceImpl implements CategoryAdmService {

    @Autowired
    private CategoryRepository categoryRepository;

    @Override
    public List<Category> findAllCategory() {
        return categoryRepository.findAllCategory();
    }

    @Override
    public boolean saveCategory(Category category) {
        boolean flag=false;
        if (category != null) {
            categoryRepository.save(category);
            flag=true;
            return  flag;
        }
        return flag;
    }

    @Override
    public void updateCategory(Long pid, String name) {
        categoryRepository.updateCategory(pid, name);
    }

    @Override
    public void deleteCategory(Long pid) {
        categoryRepository.deleteById(pid);
    }

    @Override
    public Category findById(Long pid) {
        return categoryRepository.findById(pid).get();
    }
}
