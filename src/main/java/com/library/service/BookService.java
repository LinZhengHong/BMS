package com.library.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.library.bean.Book;
import com.library.dao.BookDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class BookService {
    @Autowired
    private BookDao bookDao;

    /**
     * 分页查询全部
     */
    public PageInfo<Book> getPageBooks(Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<Book> books =bookDao.getAllBooks();
        PageInfo<Book> pageInfo= new PageInfo<>(books, 8);
        return pageInfo;
    }

    /**
     * 分页查询搜索
     */
    public PageInfo<Book> getqueryBooks(String searchWord,Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<Book> books =bookDao.queryBook(searchWord);
        PageInfo<Book> pageInfo= new PageInfo<>(books, 8);
        return pageInfo;
    }
    
    public ArrayList<Book> queryBook(String searchWord) {
        return bookDao.queryBook(searchWord);
    }

    public ArrayList<Book> getAllBooks() {
        return bookDao.getAllBooks();
    }

    public boolean matchBook(String searchWord) {
        return bookDao.matchBook(searchWord) > 0;
    }

    public boolean addBook(Book book) {
        return bookDao.addBook(book) > 0;
    }

    public Book getBook(Long bookId) {
        return bookDao.getBook(bookId);
    }

    public boolean editBook(Book book) {
        return bookDao.editBook(book) > 0;
    }

    public boolean deleteBook(Long bookId) {
        return bookDao.deleteBook(bookId) > 0;
    }

}
