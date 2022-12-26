package com.laptrinhweb.shoppo.repositories;

import com.laptrinhweb.shoppo.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface UserRepository extends JpaRepository<User, Integer> {
    @Query(value = "select u from User u where u.phone=?1")
    User checkUserPhone(String phone);

    @Query(value = "select u from User u where u.email=?1")
    User checkUserByEmail(String email);

    @Query(value = "select u.password from User u where u.email=?1")
    String getUserPasswordByEmail(String email);

    @Query(value = "select u.valid from User u where u.email=?1 and u.password=?2")
    boolean findValidUser(String email, String password);

    @Modifying(clearAutomatically = true)
    @Query("update User u set u.password =:password where u.email =:email")
    void changePassword(@Param("email") String email, @Param("password") String password);

    @Query(value = "select u.id from User u where u.email=?1")
    Long findUserId(String customerEmail);

    @Modifying(clearAutomatically = true)
    @Query("update User u set u.name =:name,u.address =:address,u.gender = :gender,u.phone =:phone,u.pinCode =:pinCode where u.id =:id")
    void updateMyUser(@Param("id") Long id,@Param("name") String name, @Param("address") String address,@Param("gender") String gender,
                          @Param("phone") String phone, @Param("pinCode") String pinCode);
}

