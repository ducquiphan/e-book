package com.poly.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.Account;

public interface AccountDAO extends JpaRepository<Account, Integer> {

	@Override
	@Query("select o from Account o where o.isActive = true")
	List<Account> findAll();

}
