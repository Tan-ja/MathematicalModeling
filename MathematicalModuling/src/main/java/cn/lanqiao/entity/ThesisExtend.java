package cn.lanqiao.entity;

import java.io.Serializable;
import java.util.List;

public class ThesisExtend implements Serializable{
	private Integer id;
	private String thedate;
	private Integer teamid;
	private Integer matchid;
	private String thecontent;
	private List<String> filepath;
	public ThesisExtend(Integer id, String thedate, Integer teamid, Integer matchid, String thecontent,
			List<String> filepath) {
		super();
		this.id = id;
		this.thedate = thedate;
		this.teamid = teamid;
		this.matchid = matchid;
		this.thecontent = thecontent;
		this.filepath = filepath;
	}
	public ThesisExtend() {}
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
	public List<String> getFilepath() {
		return filepath;
	}
	public void setFilepath(List<String> filepath) {
		this.filepath = filepath;
	}
	@Override
	public String toString() {
		return "ThesisExtend [id=" + id + ", thedate=" + thedate + ", teamid=" + teamid + ", matchid=" + matchid
				+ ", thecontent=" + thecontent + ", filepath=" + filepath + "]";
	}
}
