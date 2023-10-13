package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.Author;

public interface AuthorDAO extends JpaRepository<Author, Integer>{
	@Override
	@Query("select o from Author o where o.isActive = true")
	List<Author> findAll();
}
