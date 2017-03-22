package com.project.service;

import com.project.model.Customer;


public interface CustomerService {
void saveCustomer(Customer customer);
public Customer getCustomerByUsername(String username);
}
