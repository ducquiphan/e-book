package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entity.Account;

public interface AccountDAO extends JpaRepository<Account, Integer> {

	@Override
	@Query("select o from Account o where o.isActive = true")
	List<Account> findAll();

}
