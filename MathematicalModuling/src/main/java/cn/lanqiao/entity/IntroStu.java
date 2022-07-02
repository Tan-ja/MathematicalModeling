package cn.lanqiao.entity;

import java.io.Serializable;

public class IntroStu implements Serializable{
	private Integer id;
	private Integer sid;
	private String sname;
	private String subtitle1;
	private String descinfo;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getSid() {
		return sid;
	}
	public void setSid(Integer sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSubtitle1() {
		return subtitle1;
	}
	public void setSubtitle1(String subtitle1) {
		this.subtitle1 = subtitle1;
	}
	public String getDescinfo() {
		return descinfo;
	}
	public void setDescinfo(String descinfo) {
		this.descinfo = descinfo;
	}
	public IntroStu(Integer id, Integer sid, String sname, String subtitle1, String descinfo) {
		super();
		this.id = id;
		this.sid = sid;
		this.sname = sname;
		this.subtitle1 = subtitle1;
		this.descinfo = descinfo;
	}
	public IntroStu() {}
}
