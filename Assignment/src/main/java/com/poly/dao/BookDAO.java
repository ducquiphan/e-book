package com.poly.dao;

import java.util.List;

import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.poly.entity.Book;

@Repository
public interface BookDAO extends JpaRepository<Book, Integer> {
	@Override
	@Query("select o from Book o where o.isActive = true")
	List<Book> findAll();

	List<Book> findByTitle(String title);

}
