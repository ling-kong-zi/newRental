package com.rental.entity;

import java.util.Date;

public class Customer{
	
	private long id;
	private String tel;
	private String idCard;
	private String addr;
	private String cast_name;
	private String password;
	private Date date;
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getCast_name() {
		return cast_name;
	}
	public void setCast_name(String cast_name) {
		this.cast_name = cast_name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Customer [getDate()=" + getDate() + ", getId()=" + getId()
				+ ", getTel()=" + getTel() + ", getIdCard()=" + getIdCard()
				+ ", getAddr()=" + getAddr() + ", getCast_name()="
				+ getCast_name() + ", getPassword()=" + getPassword() + "]";
	}
}