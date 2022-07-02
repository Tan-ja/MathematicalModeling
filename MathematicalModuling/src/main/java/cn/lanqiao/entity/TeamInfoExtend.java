package cn.lanqiao.entity;

import java.io.Serializable;
import java.sql.Date;
import java.util.Arrays;
import java.util.List;

public class TeamInfoExtend implements Serializable{
	private Date pdate;
	private Integer capid;
	private String capstunum;
	private String capname;
	private String mtitle;
	private Integer currentstatus;
	private Integer teamsize;
	private Integer compeid;
	private List<Participant> allparticipant;
	public TeamInfoExtend(Date pdate, Integer capid, String capstunum, String capname, String mtitle,
			Integer currentstatus, Integer teamsize, Integer compeid, List<Participant> allparticipant) {
		super();
		this.pdate = pdate;
		this.capid = capid;
		this.capstunum = capstunum;
		this.capname = capname;
		this.mtitle = mtitle;
		this.currentstatus = currentstatus;
		this.teamsize = teamsize;
		this.compeid = compeid;
		this.allparticipant = allparticipant;
	}
	public TeamInfoExtend() {}
	public Date getPdate() {
		return pdate;
	}
	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}
	public Integer getCapid() {
		return capid;
	}
	public void setCapid(Integer capid) {
		this.capid = capid;
	}
	public String getCapstunum() {
		return capstunum;
	}
	public void setCapstunum(String capstunum) {
		this.capstunum = capstunum;
	}
	public String getCapname() {
		return capname;
	}
	public void setCapname(String capname) {
		this.capname = capname;
	}
	public String getMtitle() {
		return mtitle;
	}
	public void setMtitle(String mtitle) {
		this.mtitle = mtitle;
	}
	public Integer getCurrentstatus() {
		return currentstatus;
	}
	public void setCurrentstatus(Integer currentstatus) {
		this.currentstatus = currentstatus;
	}
	public Integer getTeamsize() {
		return teamsize;
	}
	public void setTeamsize(Integer teamsize) {
		this.teamsize = teamsize;
	}
	public Integer getCompeid() {
		return compeid;
	}
	public void setCompeid(Integer compeid) {
		this.compeid = compeid;
	}
	public List<Participant> getAllparticipant() {
		return allparticipant;
	}
	public void setAllparticipant(List<Participant> allparticipant) {
		this.allparticipant = allparticipant;
	}
	@Override
	public String toString() {
		return "TeamInfoExtend [pdate=" + pdate + ", capid=" + capid + ", capstunum=" + capstunum + ", capname="
				+ capname + ", mtitle=" + mtitle + ", currentstatus=" + currentstatus + ", teamsize=" + teamsize
				+ ", compeid=" + compeid + ", allparticipant=" + allparticipant + "]";
	}
}
