package cn.lanqiao.entity;

import java.io.Serializable;

public class UserLogin implements Serializable{
	private Integer uloid;
	private Integer userid;
	private String uloginid;
	private String upassword;
	public UserLogin(Integer uloid, Integer userid, String uloginid, String upassword) {
		super();
		this.uloid = uloid;
		this.userid = userid;
		this.uloginid = uloginid;
		this.upassword = upassword;
	}
	public UserLogin() {}
	public Integer getUloid() {
		return uloid;
	}
	public void setUloid(Integer uloid) {
		this.uloid = uloid;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public String getUloginid() {
		return uloginid;
	}
	public void setUloginid(String uloginid) {
		this.uloginid = uloginid;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	@Override
	public String toString() {
		return "UserLogin [uloid=" + uloid + ", userid=" + userid + ", uloginid=" + uloginid + ", upassword="
				+ upassword + "]";
	}
}
