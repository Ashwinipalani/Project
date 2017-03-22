package com.project.dao;

import com.project.model.Customer;

public interface CustomerDao {
	void saveCustomer(Customer customer);
	Customer getCustomerByUsername(String username);
}