package com.poly.model;

import java.io.Serializable;
import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import jakarta.persistence.UniqueConstraint;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
@Entity
@Table(name = "Admin", uniqueConstraints = { @UniqueConstraint(columnNames = { "email","username","identityNumber" }) })
public class Admin implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;

	@NotBlank
	String username;

	@NotBlank
	String password;

	@NotBlank
	String fullname;

	@Email
	@NotBlank
	String email;

	@NotBlank
	String phone;

	@Temporal(TemporalType.DATE)
	@Column(name = "birthday")
	Date birthday = new Date();

	@NotBlank
	String identityNumber;

	@NotBlank
	String avatar;

	Boolean isActiveBoolean = true;
}
