package com.rental.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.rental.entity.Customer;
import com.rental.entity.Record;
import com.rental.entity.Rental;
import com.rental.service.CustomerService;
import com.rental.service.RecordService;
import com.rental.service.RentalService;
import com.rental.service.UserService;

import java.util.Date;

public class RentalAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private RentalService rentalService;
	private Rental rental;
	private Customer customer;
	private CustomerService customerService;
	private Record record;
	private RecordService recordService;
	
	/**
	 * 租车
	 * @return
	 */
	public String dengji() {
		customer = (Customer) ActionContext.getContext().getSession().get("customer");
		rental.setCustomer(customer);
		rental.setRental_date(new Date());
		rentalService.save(rental);
		return "dengji";
		
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public Record getRecord() {
		return record;
	}
	public void setRecord(Record record) {
		this.record = record;
	}
	public RecordService getRecordService() {
		return recordService;
	}
	public void setRecordService(RecordService recordService) {
		this.recordService = recordService;
	}
	public CustomerService getCustomerService() {
		return customerService;
	}
	public void setCustomerService(CustomerService customerService) {
		this.customerService = customerService;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	private UserService userService;
	
	public RentalService getRentalService() {
		return rentalService;
	}
	public void setRentalService(RentalService rentalService) {
		this.rentalService = rentalService;
	}
	public Rental getRental() {
		return rental;
	}
	public void setRental(Rental rental) {
		this.rental = rental;
	}
}
