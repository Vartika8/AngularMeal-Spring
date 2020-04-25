package com.niit.foodorder.model;

import java.util.Arrays;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(uniqueConstraints={
	    @UniqueConstraint(columnNames = {"id","user_id"})
	}) 
public class Restaurant {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="user_id")
	@JsonIgnore
	private Users user;
	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="resturant_id")
	@JsonIgnore
	private List<Food> foodList;
	
	@Lob
	private byte[] data;

	public Restaurant(Integer id, Users user, List<Food> foodList, byte[] data) {
		super();
		this.id = id;
		this.user = user;
		this.foodList = foodList;
		this.data = data;
	}

	public Restaurant() {
		super();
		// TODO Auto-generated constructor stub
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

	public List<Food> getFoodList() {
		return foodList;
	}

	public void setFoodList(List<Food> foodList) {
		this.foodList = foodList;
	}

	public byte[] getData() {
		return data;
	}

	public void setData(byte[] data) {
		this.data = data;
	}

	@Override
	public String toString() {
		return "Restaurant [id=" + id + ", user=" + user + ", foodList=" + foodList + ", data=" + Arrays.toString(data)
				+ "]";
	}
	
	
	
	}
	

