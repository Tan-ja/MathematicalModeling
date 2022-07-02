package cn.lanqiao.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.lanqiao.dao.BookDao;
import cn.lanqiao.entity.Book;
import cn.lanqiao.service.BookService;
@Service
public class BookServiceImpl implements BookService {
	@Autowired
	private BookDao bookDao;
	@Override
	public List<Book> getAllBookWithLimit(int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return bookDao.getAllBookWithLimit(currentPage, pageSize);
	}
	@Override
	public List<Book> getAllNoLimit() {
		// TODO Auto-generated method stub
		return bookDao.getAllNoLimit();
	}
	@Override
	public Book getBookById(String ISBN) {
		// TODO Auto-generated method stub
		Book book = bookDao.getBookById(ISBN);
		return book;
	}

}
