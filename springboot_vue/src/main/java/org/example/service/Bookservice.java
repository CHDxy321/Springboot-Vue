package org.example.service;

import org.example.entity.Book;
import org.example.mapper.BookMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Bookservice {
    @Autowired
    private BookMapper bookMapper;

    public int save(Book book) {
        if (book.getId() == null){
            return  bookMapper.insert(book);
        }else {
            return bookMapper.update(book);
        }
    }
}
