package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.Category;

public interface CategoryDAO extends JpaRepository<Category, Integer>{
	@Override
	@Query("select o from Category o where o.isActive = true")
	List<Category> findAll();
}
