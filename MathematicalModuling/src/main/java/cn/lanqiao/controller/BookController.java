package cn.lanqiao.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.lanqiao.entity.Book;
import cn.lanqiao.entity.Page;
import cn.lanqiao.service.BookService;

@CrossOrigin
@RequestMapping("/api/book")
@RestController
public class BookController {
	@Autowired
	private BookService bookService;
	@GetMapping("/allbook")
	public Map<String, Object> getAllBookInfoWithLimit(int currentPage, int pageSize){
		Map<String, Object> map = new HashMap<String, Object>();
		List<Book> list = bookService.getAllBookWithLimit(currentPage, pageSize);
		Page<Book> page = new Page<Book>();
		page.setCurrentPage(currentPage);
		page.setPageSize(pageSize);
		page.setTotal(bookService.getAllNoLimit().size());
		page.setList(list);
		int pageCount = page.getTotal() % pageSize == 0? (page.getTotal() / pageSize): (page.getTotal() / pageSize + 1);
		page.setPageCount(pageCount);
		if (list != null) {
			map.put("status", 200);
			map.put("books", page);
			map.put("statusText", "信息获取成功");
		} else {
			map.put("status", 400);
			map.put("statusText", "信息获取失败");
		}
		return map;
	}
	@GetMapping("/bookdesc")
	public Map<String, Object> getBookById(String ISBN){
		Map<String, Object> map = new HashMap<String, Object>();
		Book book = bookService.getBookById(ISBN);
		if (book != null) {
			map.put("status", 200);
			map.put("bookdesc", book);
			map.put("statusText", "信息获取成功");
		} else {
			map.put("status", 400);
			map.put("statusText", "信息获取失败");
		}
		return map;
	}
}
