package cn.lanqiao.service;

import java.util.List;

import cn.lanqiao.entity.Book;

public interface BookService {
	// 查找有限数量的书籍的信息
	public List<Book> getAllBookWithLimit(int currentPage, int pageSize);
	// 查找全部书籍的信息
	public List<Book> getAllNoLimit();
	// 根据书籍的id查找书籍的信息
	public Book getBookById(String bookid);
}
