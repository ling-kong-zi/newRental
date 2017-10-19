package com.rental.entity;


public class Record{

	private long id;
	private String car_name;
	private Double price_day;
	private String plate_number;
	private String pailiang;
	private String brand;
	private String state;
	private String img;
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getCar_name() {
		return car_name;
	}
	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}
	public Double getPrice_day() {
		return price_day;
	}
	public void setPrice_day(Double price_day) {
		this.price_day = price_day;
	}
	public String getPlate_number() {
		return plate_number;
	}
	public void setPlate_number(String plate_number) {
		this.plate_number = plate_number;
	}
	public String getPailiang() {
		return pailiang;
	}
	public void setPailiang(String pailiang) {
		this.pailiang = pailiang;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}

	public String toString() {
		return "Record [getImg()=" + getImg() + ", getId()=" + getId()
				+ ", getCar_name()=" + getCar_name() + ", getPrice_day()="
				+ getPrice_day() + ", getPlate_number()=" + getPlate_number()
				+ ", getPailiang()=" + getPailiang() + ", getBrand()="
				+ getBrand() + ", getState()=" + getState() + "]";
	}

	
}