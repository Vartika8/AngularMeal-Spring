package com.niit.foodorder.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class FoodOrder {

	@Id
	private Integer id;
	private Double totalPrice;
	@ManyToMany(mappedBy = "order")
	private List<Food> food;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public List<Food> getFood() {
		return food;
	}
	public void setFood(List<Food> food) {
		this.food = food;
	}
	public FoodOrder(Integer id, Double totalPrice, List<Food> food) {
		super();
		this.id = id;
		this.totalPrice = totalPrice;
		this.food = food;
	}
	public FoodOrder() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "FoodOrder [id=" + id + ", totalPrice=" + totalPrice + ", food=" + food + "]";
	}

	

}
