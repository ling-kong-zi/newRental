package com.rental.service;

import com.rental.entity.Customer;

public interface CustomerService extends BaseService<Customer>{
	Customer getNameAndPwd(Customer customer);
}
