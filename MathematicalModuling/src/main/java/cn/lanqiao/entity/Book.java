package cn.lanqiao.entity;

import java.io.Serializable;

public class Book implements Serializable{
	private Integer bookid;
	private String bookname;
	private String author;
	private String ISBN;
	private double doubanscore;
	private String doubanaddress;
	private String bookdesc;
	private String bookaddress;
	public Integer getBookid() {
		return bookid;
	}
	public void setBookid(Integer bookid) {
		this.bookid = bookid;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getISBN() {
		return ISBN;
	}
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}
	public double getDoubanscore() {
		return doubanscore;
	}
	public void setDoubanscore(double doubanscore) {
		this.doubanscore = doubanscore;
	}
	public String getDoubanaddress() {
		return doubanaddress;
	}
	public void setDoubanaddress(String doubanaddress) {
		this.doubanaddress = doubanaddress;
	}
	public String getBookdesc() {
		return bookdesc;
	}
	public void setBookdesc(String bookdesc) {
		this.bookdesc = bookdesc;
	}
	public String getBookaddress() {
		return bookaddress;
	}
	public void setBookaddress(String bookaddress) {
		this.bookaddress = bookaddress;
	}
	public Book(Integer bookid, String bookname, String author, String iSBN, double doubanscore, String doubanaddress,
			String bookdesc, String bookaddress) {
		super();
		this.bookid = bookid;
		this.bookname = bookname;
		this.author = author;
		ISBN = iSBN;
		this.doubanscore = doubanscore;
		this.doubanaddress = doubanaddress;
		this.bookdesc = bookdesc;
		this.bookaddress = bookaddress;
	}
	public Book() {}
}
