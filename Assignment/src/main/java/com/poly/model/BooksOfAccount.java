package com.poly.model;


import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
@Entity
@Table(name = "BooksOfAccount")
public class BooksOfAccount implements Serializable{
	@Id
	private Long id;
	
	@NotNull
	@ManyToOne
	@JoinColumn(name = "accountID")
	private Account account;
	
	@NotNull
	@ManyToOne
	@JoinColumn(name = "bookID")
	private Book book;
	
	private Double progress = 0.0;
	
	private Boolean isActive = true;
	
}
