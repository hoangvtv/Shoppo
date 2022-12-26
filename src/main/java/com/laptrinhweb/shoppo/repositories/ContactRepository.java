package com.laptrinhweb.shoppo.repositories;

import com.laptrinhweb.shoppo.entity.Contact;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ContactRepository extends JpaRepository<Contact, Long> {

}
