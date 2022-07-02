package cn.lanqiao.entity;

import java.io.Serializable;

public class PushByEmail implements Serializable{
	private Integer id;
	private Integer userid;
	private String uemail;
	public PushByEmail(Integer id, Integer userid, String uemail) {
		super();
		this.id = id;
		this.userid = userid;
		this.uemail = uemail;
	}
	public PushByEmail() {}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	@Override
	public String toString() {
		return "PushByEmail [id=" + id + ", userid=" + userid + ", uemail=" + uemail + "]";
	}
}
