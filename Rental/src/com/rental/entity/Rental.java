package com.rental.entity;

import java.util.Date;

public class Rental{

	private long id;
	private Record record;
	private Customer customer;
	private long num_day;
	private Date rental_date;
	private Date return_date;
	private double totalMomey;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}

	public Record getRecord() {
		return record;
	}
	public void setRecord(Record record) {
		this.record = record;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public long getNum_day() {
		return num_day;
	}
	public void setNum_day(long num_day) {
		this.num_day = num_day;
	}
	public Date getRental_date() {
		return rental_date;
	}
	public void setRental_date(Date rental_date) {
		this.rental_date = rental_date;
	}
	public Date getReturn_date() {
		return return_date;
	}
	public void setReturn_date(Date return_date) {
		this.return_date = return_date;
	}
	public double getTotalMomey() {
		return totalMomey;
	}
	public void setTotalMomey(double totalMomey) {
		this.totalMomey = totalMomey;
	}
	@Override
	public String toString() {
		return "Rental [getId()=" + getId() + ", getNum_day()=" + getNum_day()
				+ ", getRental_date()=" + getRental_date()
				+ ", getReturn_date()=" + getReturn_date()
				+ ", getTotalMomey()=" + getTotalMomey() + "]";
	}
	
}