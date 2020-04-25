package com.niit.foodorder.model;

import java.util.Arrays;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(uniqueConstraints = { @UniqueConstraint(columnNames = { "id" }) })
public class Food {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String foodName;
	private Double price;
	private String description;
	
	@Lob
	private byte[] data;
	
	@OneToOne(mappedBy="food")
	@JsonIgnore
	private Cart cart;
//	@OneToOne(cascade=CascadeType.ALL)
//	@JoinColumn(name="food_id")
@ManyToOne
@JsonIgnore
private Restaurant restaurant;

@ManyToMany(cascade = CascadeType.ALL)
@JoinTable(name = "food_food_order", joinColumns = {
		@JoinColumn(referencedColumnName = "id") }, inverseJoinColumns = {
				@JoinColumn(referencedColumnName = "id") })
@JsonIgnore
private List<FoodOrder> order;

public Food(String foodName, Double price, String description, byte[] data) {
	super();
	this.foodName = foodName;
	this.price = price;
	this.description = description;
	this.data = data;
	
}


public Food() {
	super();
	// TODO Auto-generated constructor stub
}



public Integer getId() {
	return id;
}

public void setId(Integer id) {
	this.id = id;
}

public String getFoodName() {
	return foodName;
}

public void setFoodName(String foodName) {
	this.foodName = foodName;
}

public Double getPrice() {
	return price;
}

public void setPrice(Double price) {
	this.price = price;
}

public String getDescription() {
	return description;
}

public void setDescription(String description) {
	this.description = description;
}

public byte[] getData() {
	return data;
}

public void setData(byte[] data) {
	this.data = data;
}

public Cart getCart() {
	return cart;
}

public void setCart(Cart cart) {
	this.cart = cart;
}

public Restaurant getRestaurant() {
	return restaurant;
}

public void setRestaurant(Restaurant restaurant) {
	this.restaurant = restaurant;
}

public List<FoodOrder> getOrder() {
	return order;
}

public void setOrder(List<FoodOrder> order) {
	this.order = order;
}

@Override
public String toString() {
	return "Food [id=" + id + ", foodName=" + foodName + ", price=" + price + ", description=" + description + ", data="
			+ Arrays.toString(data) + ", cart=" + cart + ", restaurant=" + restaurant + ", order=" + order + "]";
}



}
