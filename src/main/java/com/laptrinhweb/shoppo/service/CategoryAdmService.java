package com.laptrinhweb.shoppo.service;

import com.laptrinhweb.shoppo.entity.Category;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CategoryAdmService {

    @Query(value = "select c from Category c")
    List<Category> findAllCategory();

    boolean saveCategory(Category category);

    void updateCategory(Long pid,String name);

    void deleteCategory(Long pid);

    Category findById(Long pid);

}
