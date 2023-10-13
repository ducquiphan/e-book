package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.OrderDetail;

public interface OrderDetailDAO extends JpaRepository<OrderDetail, Long>{
	@Override
	@Query("select o from OrderDetail o where o.isActive = true")
	List<OrderDetail> findAll();
}