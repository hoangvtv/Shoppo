package com.laptrinhweb.shoppo.service;

import com.laptrinhweb.shoppo.entity.Contact;

import java.util.List;
import java.util.Optional;

public interface ContactAdmService 
{
	public Optional<Contact> getContactId(Long pid);
	public List<Contact> getAllContact();
	public void deleteContact(Long pid);
	public void deleteAll(List<Contact> ids);
}
