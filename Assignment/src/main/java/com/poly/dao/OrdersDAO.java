package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.poly.entity.Account;
import com.poly.entity.Orders;

@Repository
public interface OrdersDAO extends JpaRepository<Orders, Integer> {
	@Override
	@Query("select o  from Orders o where o.isActive = true")
	List<Orders> findAll();

	@Procedure(name = "CalculateOrderTotal")
	Double calculateTotal(@Param("orderId") int orderId);
	
	List<Orders> findByAccount(Account account);
	
	@Query("SELECT o FROM Orders o WHERE o.account = ?1 ORDER BY o.orderDate DESC ")  
	List<Orders> findLastByAccount(Account account);
}
