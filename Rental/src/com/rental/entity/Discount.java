package com.rental.entity;

import java.util.Date;

public class Discount {

	private long id;
	private String name;
	private Date olddate;
	private Date newdate;
	
	public Date getOlddate() {
		return olddate;
	}
	public void setOlddate(Date olddate) {
		this.olddate = olddate;
	}
	public Date getNewdate() {
		return newdate;
	}
	public void setNewdate(Date newdate) {
		this.newdate = newdate;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "Discount [getOlddate()=" + getOlddate() + ", getNewdate()="
				+ getNewdate() + ", getId()=" + getId() + ", getName()="
				+ getName() + "]";
	}



	
	
}