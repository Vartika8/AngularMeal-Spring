package com.niit.foodorder.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import com.fasterxml.jackson.annotation.JsonIgnore;


@Entity
@Table(uniqueConstraints={
	    @UniqueConstraint(columnNames = {"id","user_id"})
	}) 
public class Customer {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="user_id")
	@JsonIgnore
	private Users user;
	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="customer_id")
	@JsonIgnore
	private List<Cart> cartList;
	@OneToMany(targetEntity=FoodOrder.class,cascade=CascadeType.ALL)
	@JoinColumn(name="customer_id")
	@JsonIgnore
	private List<FoodOrder> foodOrder;

	
	
	public List<Cart> getCartList() {
		return cartList;
	}

	public void setCartList(List<Cart> cartList) {
		this.cartList = cartList;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public List<FoodOrder> getFoodOrder() {
		return foodOrder;
	}

	public void setFoodOrder(List<FoodOrder> foodOrder) {
		this.foodOrder = foodOrder;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", foodOrder=" + foodOrder + "]";
	}
	
	
}
