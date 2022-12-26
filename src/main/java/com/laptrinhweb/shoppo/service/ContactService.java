package com.laptrinhweb.shoppo.service;

import com.laptrinhweb.shoppo.entity.Contact;

import javax.mail.MessagingException;

public interface ContactService {
	
	void saveContacts(Contact contact) throws MessagingException;

}
