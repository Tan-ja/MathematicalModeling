package cn.lanqiao.entity;

import java.io.Serializable;
import java.util.List;

public class Page<T> implements Serializable{
	private int currentPage; //当前页数
	private int pageSize; //每页显示多少条数据
	private int total; //一共多少条数据
	private int pageCount; //一共多少页
	private List<T> list; //每页所需的数据
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> acades) {
		this.list = acades;
	}
	public Page(int currentPage, int pageSize, int total, int pageCount, List<T> list) {
		super();
		this.currentPage = currentPage;
		this.pageSize = pageSize;
		this.total = total;
		this.pageCount = pageCount;
		this.list = list;
	}
	public Page() {}
}
