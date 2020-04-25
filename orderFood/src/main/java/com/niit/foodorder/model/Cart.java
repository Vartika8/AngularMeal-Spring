package com.niit.foodorder.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Cart {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="foodId")
	private Food food;

	@ManyToOne
	@JsonIgnore
	private Customer customer;
	
	
	private Integer quantity;
	private Double price;
	@Override
	public String toString() {
		return "Cart [id=" + id + ", food=" + food + ", customer=" + customer + ", quantity=" + quantity + ", price="
				+ price + "]";
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Food getFood() {
		return food;
	}
	public void setFood(Food food) {
		this.food = food;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Cart(Integer id, Food food, Customer customer, Integer quantity, Double price) {
		super();
		this.id = id;
		this.food = food;
		this.customer = customer;
		this.quantity = quantity;
		this.price = price;
	}
	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
