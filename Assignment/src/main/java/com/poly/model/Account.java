package com.poly.model;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
@Entity
@Table(name = "Account", uniqueConstraints = { @UniqueConstraint(columnNames = { "email" }) })
public class Account implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	@Email
	@NotBlank
	String email;
	@NotBlank
	String password;
	@NotBlank
	String fullname;
	@NotBlank
	String avatar;
	@OneToMany(mappedBy = "account")
	List<BooksOfAccount> booksOfAccount;
	@OneToMany(mappedBy = "account")
	List<Orders> orders;
}
