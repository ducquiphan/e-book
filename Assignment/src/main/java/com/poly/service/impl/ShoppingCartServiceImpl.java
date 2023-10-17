/**
 * 
 */
package com.poly.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import com.poly.dao.BookDAO;
import com.poly.entity.Book;
import com.poly.service.ShoppingCartService;

/**
 * 
 */
@Service
@SessionScope
public class ShoppingCartServiceImpl implements ShoppingCartService {

	private static HashMap<Integer, Book> cart = new HashMap<>();

	@Autowired
	BookDAO dao;
	
	@Override
	public void addBook(Integer id) {
		// TODO Auto-generated method stub
		// Add one quantity of product to the cart
		Book book = dao.findAll().get(id).orderProduct(1);
		if (!cart.containsKey(id)) {
			// If cart does not have the product, add it to the cart
			cart.put(book.getId(), book);
		} else if (book != null) {
			// If cart already has the product, update the quantity
			int oldQuantity = cart.get(id).getQty();
			cart.get(id).setQty(oldQuantity+1);
		}
	}

	@Override
	public void removeBook(Integer id) {
		// TODO Auto-generated method stub
		// Remove product
		Book book = cart.get(id);
		// Return quantity order into products list
		if (book != null) {
			dao.findAll().get(id).orderProduct(0 - book.getQty());
			cart.remove(id);
		}
	}

	@Override
	public void updateBook(Integer id, int qty) {
		// TODO Auto-generated method stub
		// Get the product from cart
		Book book = cart.get(id);
		// Get the products with the quantity left 
		Book bookCheck = dao.findAll().get(id).orderProduct(qty - book.getQty());
		// Update or remove product
		if (qty > 0) {
			// If there is enough quantity
			if (bookCheck != null) {
				book.setQty(qty);
			}
		} else {
			// If the quantity = 0
			removeBook(id);
		}
	}

	@Override
	public void clear() {
		// TODO Auto-generated method stub
		for (Integer id : cart.keySet()) {
			Book book = cart.get(id);
			// Return quantity order into products list
			dao.findAll().get(id).orderProduct(0 - book.getQty());
		}
		cart.clear();
	}

	@Override
	public Map<Integer, Book> getBooks() {
		// TODO Auto-generated method stub
		return cart;
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		int count = 0;
		for (Book book : cart.values()) {
			count += book.getQty();
		}
		return count;
	}

	@Override
	public double getAmount() {
		// TODO Auto-generated method stub
		double amount = 0;
		for (Book book : cart.values()) {
			amount += book.getPrice() * book.getQty();
		}
		return amount;
	}

}
