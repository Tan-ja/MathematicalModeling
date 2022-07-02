package cn.lanqiao.entity;

import java.io.Serializable;

public class FamousStudent implements Serializable{
	private Integer ufid;
	private String uid;
	private String ufcontent;
	private String uname;
	private String ufaceaddress;
	public Integer getUfid() {
		return ufid;
	}
	public void setUfid(Integer ufid) {
		this.ufid = ufid;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUfcontent() {
		return ufcontent;
	}
	public void setUfcontent(String ufcontent) {
		this.ufcontent = ufcontent;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUfaceaddress() {
		return ufaceaddress;
	}
	public void setUfaceaddress(String ufaceaddress) {
		this.ufaceaddress = ufaceaddress;
	}
	public FamousStudent(Integer ufid, String uid, String ufcontent, String uname, String ufaceaddress) {
		super();
		this.ufid = ufid;
		this.uid = uid;
		this.ufcontent = ufcontent;
		this.uname = uname;
		this.ufaceaddress = ufaceaddress;
	}
	public FamousStudent() {}
}
