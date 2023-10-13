package com.poly.model;


import java.io.Serializable;
import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
@Entity
@Table(name = "Orders")
public class Orders implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	
	@NotNull
	@ManyToOne
	@JoinColumn(name = "accountID")
	Account account;
	
	@NotBlank
	String phone;
	
	@Temporal(TemporalType.DATE)
	@Column(name = "orderDate")
	Date orderDate = new Date();
	
	@OneToMany(mappedBy = "order")
	List<OrderDetail> orderDetails;
	
	Boolean isActive = true;
}
