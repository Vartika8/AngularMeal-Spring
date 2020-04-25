package com.niit.foodorder.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Address {

	@Id
	private String baseAddress;
	
	private String city;
	private String state;
	private Integer pincode;
	
	public Address() {
		super();
	}

	public Address(String baseAddress, String city, String state, Integer pincode) {
		super();
		this.baseAddress = baseAddress;
		this.city = city;
		this.state = state;
		this.pincode = pincode;
	}

	@OneToOne(cascade=CascadeType.ALL,mappedBy="address")
	@JsonIgnore
	private Users user;

	public String getBaseAddress() {
		return baseAddress;
	}

	public void setBaseAddress(String baseAddress) {
		this.baseAddress = baseAddress;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Integer getPincode() {
		return pincode;
	}

	public void setPincode(Integer pincode) {
		this.pincode = pincode;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Address [baseAddress=" + baseAddress + ", city=" + city + ", state=" + state + ", pincode=" + pincode
				+ "]";
	}
	
	
}
