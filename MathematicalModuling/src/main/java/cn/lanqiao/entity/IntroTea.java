package cn.lanqiao.entity;

import java.io.Serializable;

public class IntroTea implements Serializable{
	private Integer id;
	private Integer uid;
	private String uname;
	private String subtitle1;
	private String subtitle2;
	private String descinfo;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getSubtitle1() {
		return subtitle1;
	}
	public void setSubtitle1(String subtitle1) {
		this.subtitle1 = subtitle1;
	}
	public String getSubtitle2() {
		return subtitle2;
	}
	public void setSubtitle2(String subtitle2) {
		this.subtitle2 = subtitle2;
	}
	public String getDescinfo() {
		return descinfo;
	}
	public void setDescinfo(String descinfo) {
		this.descinfo = descinfo;
	}
	public IntroTea(Integer id, Integer uid, String uname, String subtitle1, String subtitle2, String descinfo) {
		super();
		this.id = id;
		this.uid = uid;
		this.uname = uname;
		this.subtitle1 = subtitle1;
		this.subtitle2 = subtitle2;
		this.descinfo = descinfo;
	}
	public IntroTea() {}
}
