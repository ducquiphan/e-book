package com.poly.model;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
@Entity
@Table(name = "Book")
public class Book implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	
	@NotNull
	String title;
	
	@NotNull
	@Min(0)
	Double price;
	
	@NotNull
	@Min(1)
	Integer qty;
	
	@NotBlank
	String introduction;
	
	@NotBlank
	String picturePath;
	
	@NotBlank
	String contentPath;
	
	@NotNull
	@ManyToOne
	@JoinColumn(name = "authorId")
	Author author;
	
	@NotNull
	@ManyToOne
	@JoinColumn(name = "categoryId")
	Category category;
	
	@NotNull
	@ManyToOne
	@JoinColumn(name = "publisherId")
	Publisher publisher;
	
	@OneToMany(mappedBy = "book")
	List<BooksOfAccount> booksOfAccount;
	
	@OneToMany(mappedBy = "book")
	List<OrderDetail> orderDetails;
	
	Boolean isActive = true;
}
