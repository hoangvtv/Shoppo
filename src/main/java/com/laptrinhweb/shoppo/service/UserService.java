package com.laptrinhweb.shoppo.service;

import com.laptrinhweb.shoppo.entity.User;

public interface UserService {

	void saveCustomer(User customer);
	boolean loginCustomer(String email, String password);
	User findCustomerByEmail(String email);
	String findCustomerPassword(String email);
	void updateCustomerById(Long id, String name, String address, String gender, String phone, String pinCode);
	void sendMail(User user);
	void updatePassword(String email, String password);
	User findCustomerByPhone(String phone);
	Long getCustomerId(String customerEmail);
}
