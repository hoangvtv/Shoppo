package com.laptrinhweb.shoppo.service.Impl;

import com.laptrinhweb.shoppo.entity.User;
import com.laptrinhweb.shoppo.repositories.UserAdmRepository;
import com.laptrinhweb.shoppo.service.UserAdmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class UserAdmServiceImpl implements UserAdmService {
    @Autowired
    UserAdmRepository userAdmRepo;

    @Override
    public Optional<User> getCustomerId(Long pid) {
        return userAdmRepo.findById(pid);
    }

    @Override
    public List<User> getAllCustomer() {
        return userAdmRepo.findAll();
    }

    @Override
    public void deleteCustomer(Long pid) {
        userAdmRepo.deleteById(pid);
    }

    @Override
    public void deleteAll(List<User> ids) {
    }

}
