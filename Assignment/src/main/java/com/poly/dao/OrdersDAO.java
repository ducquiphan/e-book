package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.poly.entity.Orders;
@Repository
public interface OrdersDAO extends JpaRepository<Orders, Integer>{
	@Override
	@Query("select o from Orders o where o.isActive = true")
	List<Orders> findAll();
}
