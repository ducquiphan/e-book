package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.Publisher;

public interface PublisherDAO extends JpaRepository<Publisher, Integer>{
	@Override
	@Query("select o from Publisher o where o.isActive = true")
	List<Publisher> findAll();
}
