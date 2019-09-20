package com.spring.dto;

public class Tbl_heartlist {

	private int heartId;
	private int id;
	private String email;
	private int count;
		
	
	
	

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getHeartId() {
		return heartId;
	}

	public void setHeartId(int heartId) {
		this.heartId = heartId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Tbl_heartlist() {}

	@Override
	public String toString() {
		return "Tbl_heartlist [heartId=" + heartId + ", id=" + id + ", email=" + email + "]";
	}

	public Tbl_heartlist(int heartId, int id, String email) {
		super();
		this.heartId = heartId;
		this.id = id;
		this.email = email;
	}
}
