package cn.lanqiao.entity;

import java.io.Serializable;

public class CheckUserEmail implements Serializable{
	private String uloginid;
	private String uemail;
	public CheckUserEmail(String uloginid, String uemail) {
		super();
		this.uloginid = uloginid;
		this.uemail = uemail;
	}
	public CheckUserEmail() {}
	public String getUloginid() {
		return uloginid;
	}
	public void setUloginid(String uloginid) {
		this.uloginid = uloginid;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	@Override
	public String toString() {
		return "CheckUserEmail [uloginid=" + uloginid + ", uemail=" + uemail + "]";
	}
}
