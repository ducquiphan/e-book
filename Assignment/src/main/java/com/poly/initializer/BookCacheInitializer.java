package com.poly.initializer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;

import com.poly.dao.BookDAO;

@Component
public class BookCacheInitializer {

    private final BookDAO bookDAO;

    @Autowired
    public BookCacheInitializer(BookDAO bookDAO) {
        this.bookDAO = bookDAO;
    }

    @EventListener(ApplicationReadyEvent.class)
    public void initializeCache() {
        bookDAO.findAll();
    }
}
