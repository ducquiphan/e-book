package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.Book;

public interface BookDAO extends JpaRepository<Book, Integer>{
	@Override
	@Query("select o from Book o where o.isActive = true")
	List<Book> findAll();
}
