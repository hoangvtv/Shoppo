package com.laptrinhweb.shoppo.repositories;


import com.laptrinhweb.shoppo.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {
    @Query(value = "select c from Category c")
    List<Category> findAllCategory();

    @Modifying
    @Query(value = "update Category c set c.name=:name where c.id =:id ")
    void updateCategory(@Param("id") Long id,@Param("name") String name );
}
