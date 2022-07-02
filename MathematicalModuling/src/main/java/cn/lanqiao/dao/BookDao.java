package cn.lanqiao.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import cn.lanqiao.entity.Book;

@Mapper
public interface BookDao {
	// 查找有限数量的书籍的信息
	List<Book> getAllBookWithLimit(int currentPage, int pageSize);
	// 查找全部书籍的信息
	List<Book> getAllNoLimit();
	// 根据书籍的id查找书籍的信息
	Book getBookById(String bookid);
}
