package com.bean;

public class applyBean {
 
	private int id;
	private int reid;
	private String name;
	private String number;
	
	
	
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getReid() {
		return reid;
	}
	public void setReid(int reid) {
		this.reid = reid;
	}
	@Override
	public String toString() {
		return "applyBean [id=" + id + ", reid=" + reid + ", name=" + name + ", number=" + number + "]";
	}
	
	
	
}
