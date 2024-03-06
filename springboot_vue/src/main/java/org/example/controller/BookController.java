package org.example.controller;

import org.example.entity.Book;
import org.example.mapper.BookMapper;
import org.example.service.Bookservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/book")
public class BookController {
    @Autowired
    private BookMapper bookMapper;

    @Autowired
    private Bookservice bookservice;

    @GetMapping("")
    public List<Book> findAll()
    {
        List<Book> books = bookMapper.findAll();
        return books;
    }

    @GetMapping("/findAll")
    public Map<String, Object> findPage(@RequestParam Integer pageNum,@RequestParam Integer pageSize){
        pageNum = (pageNum-1)*pageSize;
        List<Book> data=bookMapper.selectPage(pageNum,pageSize);
        Integer total = bookMapper.selectTotal();
        Map<String, Object> res = new HashMap<>();
        res.put("data", data);
        res.put("total", total);
        return res;
    }

    @PostMapping
    public Integer save(@RequestBody Book book){
        return bookservice.save(book);
    }

}
