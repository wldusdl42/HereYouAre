package com.spring.dto;

public class Tbl_area {

	private int id;
	private String agencyName;
	private String bulidingType;
	private String rentType;
	private String areaPrice;
	private String areaSize;
	private String floor;
	private String adongCd;
	private String areaAddress;
	private String email;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
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
	public String getAgencyName() {
		return agencyName;
	}
	public void setAgencyName(String agencyName) {
		this.agencyName = agencyName;
	}
	public String getBulidingType() {
		return bulidingType;
	}
	public void setBulidingType(String bulidingType) {
		this.bulidingType = bulidingType;
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
	public String getFloor() {
		return floor;
	}
	public void setFloor(String floor) {
		this.floor = floor;
	}
	public String getAdongCd() {
		return adongCd;
	}
	public void setAdongCd(String adongCd) {
		this.adongCd = adongCd;
	}
	public String getAreaAddress() {
		return areaAddress;
	}
	public void setAreaAddress(String areaAddress) {
		this.areaAddress = areaAddress;
	}

	public Tbl_area() {}
	
	public Tbl_area(int id, String agencyName, String bulidingType, String rentType, String areaPrice, String areaSize,
			String floor, String adongCd, String areaAddress, String email, String tel,
			String agencyAddress) {
		super();
		this.id = id;
		this.agencyName = agencyName;
		this.bulidingType = bulidingType;
		this.rentType = rentType;
		this.areaPrice = areaPrice;
		this.areaSize = areaSize;
		this.floor = floor;
		this.adongCd = adongCd;
		this.areaAddress = areaAddress;
		this.email = email;
		this.tel = tel;
		this.agencyAddress = agencyAddress;
	}
}
