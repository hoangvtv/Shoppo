package com.laptrinhweb.shoppo.service;

import com.laptrinhweb.shoppo.entity.User;

import java.util.List;
import java.util.Optional;

public interface UserAdmService
{
	public Optional<User> getCustomerId(Long pid);
	public List<User> getAllCustomer();
	public void deleteCustomer(Long pid);
	public void deleteAll(List<User> ids);
}
