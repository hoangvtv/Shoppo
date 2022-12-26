package com.laptrinhweb.shoppo.repositories;

import com.laptrinhweb.shoppo.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserAdmRepository extends JpaRepository<User,Long>
{

}
