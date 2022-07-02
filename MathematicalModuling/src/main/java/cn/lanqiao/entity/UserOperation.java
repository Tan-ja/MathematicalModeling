package cn.lanqiao.entity;

import java.io.Serializable;

public class UserOperation implements Serializable{
	private Integer id;
	private Integer userid;
	private String otherid;
	private String odate;
	private String operation;
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
	public String getOtherid() {
		return otherid;
	}
	public void setOtherid(String otherid) {
		this.otherid = otherid;
	}
	public String getOdate() {
		return odate;
	}
	public void setOdate(String odate) {
		this.odate = odate;
	}
	public String getOperation() {
		return operation;
	}
	public void setOperation(String operation) {
		this.operation = operation;
	}
	public UserOperation(Integer id, Integer userid, String otherid, String odate, String operation) {
		super();
		this.id = id;
		this.userid = userid;
		this.otherid = otherid;
		this.odate = odate;
		this.operation = operation;
	}
	public UserOperation() {}
}
