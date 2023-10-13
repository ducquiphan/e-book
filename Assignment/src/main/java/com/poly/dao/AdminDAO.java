package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.Admin;

public interface AdminDAO extends JpaRepository<Admin, Integer>{
	@Override
	@Query("select o from Admin o where o.isActive = true")
	List<Admin> findAll();
}
