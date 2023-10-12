package com.poly.model;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
@Entity
@Table(name = "OrderDetail")
public class OrderDetail implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	
	@NotNull
	@Min(1)
	Integer qty;
	
	@NotNull
	@Min(0)
	Double price;
	
	@NotNull
	@ManyToOne
	@JoinColumn(name = "bookID")
	Book book;
	
	@NotNull
	@ManyToOne
	@JoinColumn(name = "orderID")
	Orders order;
	
	Boolean isActive = true;
}
