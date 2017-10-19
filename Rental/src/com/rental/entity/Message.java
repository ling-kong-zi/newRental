package com.rental.entity;

import java.util.Date;


public class Message{

	private long id;
	private String customer_content;
	private String agent_content;
	private Date message_date;
	private Date recovery_date;
	private Customer customer;
	private User user;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}

	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getCustomer_content() {
		return customer_content;
	}
	public void setCustomer_content(String customer_content) {
		this.customer_content = customer_content;
	}
	public String getAgent_content() {
		return agent_content;
	}
	public void setAgent_content(String agent_content) {
		this.agent_content = agent_content;
	}
	public Date getMessage_date() {
		return message_date;
	}
	public void setMessage_date(Date message_date) {
		this.message_date = message_date;
	}
	public Date getRecovery_date() {
		return recovery_date;
	}
	public void setRecovery_date(Date recovery_date) {
		this.recovery_date = recovery_date;
	}
	@Override
	public String toString() {
		return "Message [id=" + id + ", customer_content=" + customer_content
				+ ", agent_content=" + agent_content + ", message_date="
				+ message_date + ", recovery_date=" + recovery_date + "]";
	}
	
}