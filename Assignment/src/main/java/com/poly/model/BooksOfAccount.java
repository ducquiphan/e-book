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
@Table(name = "BookOfAccount")
public class BooksOfAccount implements Serializable{
	@Id
	int id;
	
	@NotNull
	@ManyToOne
	@JoinColumn(name = "accountID")
	Account account;
	
	@NotNull
	@ManyToOne
	@JoinColumn(name = "bookId")
	Book book;
	
	Double progress;
	
	
}
