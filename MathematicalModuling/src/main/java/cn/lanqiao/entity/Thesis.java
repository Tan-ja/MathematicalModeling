package cn.lanqiao.entity;

import java.io.Serializable;

public class Thesis implements Serializable{
	private Integer id;
	private String thedate;
	private Integer teamid;
	private Integer matchid;
	private String thecontent;
	public Thesis(Integer id, String thedate, Integer teamid, Integer matchid, String thecontent) {
		super();
		this.id = id;
		this.thedate = thedate;
		this.teamid = teamid;
		this.matchid = matchid;
		this.thecontent = thecontent;
	}
	public Thesis() {}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getThedate() {
		return thedate;
	}
	public void setThedate(String thedate) {
		this.thedate = thedate;
	}
	public Integer getTeamid() {
		return teamid;
	}
	public void setTeamid(Integer teamid) {
		this.teamid = teamid;
	}
	public Integer getMatchid() {
		return matchid;
	}
	public void setMatchid(Integer matchid) {
		this.matchid = matchid;
	}
	public String getThecontent() {
		return thecontent;
	}
	public void setThecontent(String thecontent) {
		this.thecontent = thecontent;
	}
	@Override
	public String toString() {
		return "Thesis [id=" + id + ", thedate=" + thedate + ", teamid=" + teamid + ", matchid=" + matchid
				+ ", thecontent=" + thecontent + "]";
	}
}
