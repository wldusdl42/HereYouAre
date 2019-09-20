package com.spring.dto;

public class JoinRealtor {

	private String name;
	private String email;
	private String password;
	private String phone;
	private String address;
	private String sex;
	private String age;
	private String realtorNumber;
	private String ownerNumber;
	private String agencyName;
	private String agencyAddress;
	private String tel;
	
	public JoinRealtor() {
		
	}
	
	

	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getSex() {
		return sex;
	}



	public void setSex(String sex) {
		this.sex = sex;
	}



	public String getAge() {
		return age;
	}



	public void setAge(String age) {
		this.age = age;
	}



	public String getRealtorNumber() {
		return realtorNumber;
	}



	public void setRealtorNumber(String realtorNumber) {
		this.realtorNumber = realtorNumber;
	}



	public String getOwnerNumber() {
		return ownerNumber;
	}



	public void setOwnerNumber(String ownerNumber) {
		this.ownerNumber = ownerNumber;
	}



	public String getAgencyName() {
		return agencyName;
	}



	public void setAgencyName(String agencyName) {
		this.agencyName = agencyName;
	}



	public String getAgencyAddress() {
		return agencyAddress;
	}



	public void setAgencyAddress(String agencyAddress) {
		this.agencyAddress = agencyAddress;
	}



	public String getTel() {
		return tel;
	}



	public void setTel(String tel) {
		this.tel = tel;
	}



	@Override
	public String toString() {
		return "JoinRealtor [name=" + name + ", email=" + email + ", password=" + password + ", phone=" + phone
				+ ", address=" + address + ", sex=" + sex + ", age=" + age + ", realtorNumber=" + realtorNumber
				+ ", ownerNumber=" + ownerNumber + ", agencyName=" + agencyName + ", agencyAddress=" + agencyAddress
				+ ", tel=" + tel + "]";
	}

	public JoinRealtor(String name, String email, String password, String phone, String address, String sex, String age,
			String realtorNumber, String ownerNumber, String agencyName, String agencyAddress) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.phone = phone;
		this.address = address;
		this.sex = sex;
		this.age = age;
		this.realtorNumber = realtorNumber;
		this.ownerNumber = ownerNumber;
		this.agencyName = agencyName;
		this.agencyAddress = agencyAddress;
		this.tel = tel;
	}
	
	
}