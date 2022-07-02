package cn.lanqiao.entity;

import java.io.Serializable;

public class UserUpdateUpassword implements Serializable{
	private String uloginid;
	private String newpassword;
	public UserUpdateUpassword(String uloginid, String newpassword) {
		super();
		this.uloginid = uloginid;
		this.newpassword = newpassword;
	}
	public UserUpdateUpassword() {}
	public String getUloginid() {
		return uloginid;
	}
	public void setUloginid(String uloginid) {
		this.uloginid = uloginid;
	}
	public String getNewpassword() {
		return newpassword;
	}
	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}
	@Override
	public String toString() {
		return "UserUpdateUpassword [uloginid=" + uloginid + ", newpassword=" + newpassword + "]";
	}
}
