package com.spring.dto;

public class Tbl_join {

	private int id;
	private String rentType;
	private String areaPrice;
	private String areaSize;
	private String areaAddress;
	
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAgencyAddress() {
		return agencyAddress;
	}
	public void setAgencyAddress(String agencyAddress) {
		this.agencyAddress = agencyAddress;
	}
	private String tel;
	private String agencyAddress;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRentType() {
		return rentType;
	}
	public void setRentType(String rentType) {
		this.rentType = rentType;
	}
	public String getAreaPrice() {
		return areaPrice;
	}
	public void setAreaPrice(String areaPrice) {
		this.areaPrice = areaPrice;
	}
	public String getAreaSize() {
		return areaSize;
	}
	public void setAreaSize(String areaSize) {
		this.areaSize = areaSize;
	}
	public String getAreaAddress() {
		return areaAddress;
	}
	public void setAreaAddress(String areaAddress) {
		this.areaAddress = areaAddress;
	}

	public Tbl_join() {}
	public Tbl_join(int id, String rentType, String areaPrice, String areaSize, String areaAddress, String tel,
			String agencyAddress) {
		super();
		this.id = id;
		this.rentType = rentType;
		this.areaPrice = areaPrice;
		this.areaSize = areaSize;
		this.areaAddress = areaAddress;
		this.tel = tel;
		this.agencyAddress = agencyAddress;
	}
	
}