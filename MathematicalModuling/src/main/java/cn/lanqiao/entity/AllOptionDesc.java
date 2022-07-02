package cn.lanqiao.entity;

import java.io.Serializable;

public class AllOptionDesc implements Serializable{
	private Integer id;
	private String profession;
	private String category;
	private String name;
	private String date;
	private String from;
	private int comments;
	private int readers;
	private String faceaddress;
	private String desc;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public int getComments() {
		return comments;
	}
	public void setComments(int comments) {
		this.comments = comments;
	}
	public int getReaders() {
		return readers;
	}
	public void setReaders(int readers) {
		this.readers = readers;
	}
	public String getFaceaddress() {
		return faceaddress;
	}
	public void setFaceaddress(String faceaddress) {
		this.faceaddress = faceaddress;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public AllOptionDesc(Integer id, String profession, String category, String name, String date, String from,
			int comments, int readers, String faceaddress, String desc) {
		super();
		this.id = id;
		this.profession = profession;
		this.category = category;
		this.name = name;
		this.date = date;
		this.from = from;
		this.comments = comments;
		this.readers = readers;
		this.faceaddress = faceaddress;
		this.desc = desc;
	}
	public AllOptionDesc() {}
}
