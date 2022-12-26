package com.laptrinhweb.shoppo.repositories;

import com.laptrinhweb.shoppo.common.RoleName;
import com.laptrinhweb.shoppo.entity.Role;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface RoleRepository extends JpaRepository<Role, Integer> {
    Optional<Role> findByName(RoleName roleName);
}
