package cn.lanqiao.entity;

import java.io.Serializable;
import java.sql.Date;

public class TeamInfo implements Serializable{
	private Integer id;
	private String stunum;
	private Integer compeid;
	private Integer capid;
	private Date pdate;
	private Integer currentstatus;
	private Integer mrole;
	private String presult;
	public TeamInfo(Integer id, String stunum, Integer compeid, Integer capid, Date pdate, Integer currentstatus,
			Integer mrole, String presult) {
		super();
		this.id = id;
		this.stunum = stunum;
		this.compeid = compeid;
		this.capid = capid;
		this.pdate = pdate;
		this.currentstatus = currentstatus;
		this.mrole = mrole;
		this.presult = presult;
	}
	public TeamInfo() {}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getStunum() {
		return stunum;
	}
	public void setStunum(String stunum) {
		this.stunum = stunum;
	}
	public Integer getCompeid() {
		return compeid;
	}
	public void setCompeid(Integer compeid) {
		this.compeid = compeid;
	}
	public Integer getCapid() {
		return capid;
	}
	public void setCapid(Integer capid) {
		this.capid = capid;
	}
	public Date getPdate() {
		return pdate;
	}
	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}
	public Integer getCurrentstatus() {
		return currentstatus;
	}
	public void setCurrentstatus(Integer currentstatus) {
		this.currentstatus = currentstatus;
	}
	public Integer getMrole() {
		return mrole;
	}
	public void setMrole(Integer mrole) {
		this.mrole = mrole;
	}
	public String getPresult() {
		return presult;
	}
	public void setPresult(String presult) {
		this.presult = presult;
	}
	@Override
	public String toString() {
		return "TeamInfo [id=" + id + ", stunum=" + stunum + ", compeid=" + compeid + ", capid=" + capid + ", pdate="
				+ pdate + ", currentstatus=" + currentstatus + ", mrole=" + mrole + ", presult=" + presult + "]";
	}
}
