package cn.lanqiao.entity;

import java.io.Serializable;

public class UserFeedback implements Serializable{
	private Integer pid;
	private String uloginid;
	private String pdate;
	private String pcontent;
	private String phandle;
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public String getUloginid() {
		return uloginid;
	}
	public void setUloginid(String uloginid) {
		this.uloginid = uloginid;
	}
	public String getPdate() {
		return pdate;
	}
	public void setPdate(String pdate) {
		this.pdate = pdate;
	}
	public String getPcontent() {
		return pcontent;
	}
	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}
	public String getPhandle() {
		return phandle;
	}
	public void setPhandle(String phandle) {
		this.phandle = phandle;
	}
	public UserFeedback(Integer pid, String uloginid, String pdate, String pcontent, String phandle) {
		super();
		this.pid = pid;
		this.uloginid = uloginid;
		this.pdate = pdate;
		this.pcontent = pcontent;
		this.phandle = phandle;
	}
	public UserFeedback() {}
}
