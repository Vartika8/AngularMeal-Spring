package com.niit.foodorder.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(uniqueConstraints = { @UniqueConstraint(columnNames = { "id" }) })
public class Food {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String foodName;
	private Double price;
	private String description;
	private String imageUrl;
//	@OneToOne(cascade=CascadeType.ALL)
//	@JoinColumn(name="food_id")

	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name = "food_food_order", joinColumns = {
			@JoinColumn(referencedColumnName = "id") }, inverseJoinColumns = {
					@JoinColumn(referencedColumnName = "id") })
	private List<FoodOrder> order;

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

	public List<FoodOrder> getOrder() {
		return order;
	}

	public void setOrder(List<FoodOrder> order) {
		this.order = order;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

}
