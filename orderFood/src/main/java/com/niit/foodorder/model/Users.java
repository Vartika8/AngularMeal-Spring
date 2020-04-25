package com.niit.foodorder.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(uniqueConstraints={
	    @UniqueConstraint(columnNames = {"phone"})
	}) 
public class Users {

	
	@Id
	private String phone;
	
	private String name;
	
	private String password;
	
	@OneToOne(mappedBy="user")
	private Customer customer;
	
	@OneToOne(mappedBy="user")
	private Restaurant restaurant;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="address_id")
	private Address address;
	
	
	private String role;
	
	

	public Users(String phone, String name, String password, String role) {
		super();
		this.phone = phone;
		this.name = name;
		this.password = password;
		this.role = role;
	}

	public Users() {
		super();
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Restaurant getRestaurant() {
		return restaurant;
	}

	public void setRestaurant(Restaurant restaurant) {
		this.restaurant = restaurant;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Users [phone=" + phone + ", name=" + name + ", password=" + password + ", customer=" + customer
				+ ", restaurant=" + restaurant + ", address=" + address + ", role=" + role + "]";
	}
	
	
}
