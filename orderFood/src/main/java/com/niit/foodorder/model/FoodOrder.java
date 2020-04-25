package com.niit.foodorder.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class FoodOrder {

	@Id
	private Integer id;
	private Double totalPrice;
	private Integer qunatity;
	@ManyToMany(mappedBy = "order")
	private List<Food> food;

	public FoodOrder() {
		super();
	}

	public FoodOrder(Double totalPrice, Integer qunatity) {
		super();
		this.totalPrice = totalPrice;
		this.qunatity = qunatity;
	}

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

	public Integer getQunatity() {
		return qunatity;
	}

	public void setQunatity(Integer qunatity) {
		this.qunatity = qunatity;
	}

	public List<Food> getFood() {
		return food;
	}

	public void setFood(List<Food> food) {
		this.food = food;
	}

	@Override
	public String toString() {
		return "FoodOrder [id=" + id + ", totalPrice=" + totalPrice + ", qunatity=" + qunatity + ", food=" + food + "]";
	}

}
