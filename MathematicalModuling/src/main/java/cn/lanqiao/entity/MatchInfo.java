package cn.lanqiao.entity;

import java.sql.Date;

public class MatchInfo {
	private Integer id;
	private String mtitle;
	private Date mdate;
	private String mdesc;
	private int maxn;
	public MatchInfo(Integer id, String mtitle, Date mdate, String mdesc, int maxn) {
		super();
		this.id = id;
		this.mtitle = mtitle;
		this.mdate = mdate;
		this.mdesc = mdesc;
		this.maxn = maxn;
	}
	public MatchInfo() {}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getMtitle() {
		return mtitle;
	}
	public void setMtitle(String mtitle) {
		this.mtitle = mtitle;
	}
	public Date getMdate() {
		return mdate;
	}
	public void setMdate(Date mdate) {
		this.mdate = mdate;
	}
	public String getMdesc() {
		return mdesc;
	}
	public void setMdesc(String mdesc) {
		this.mdesc = mdesc;
	}
	public int getMaxn() {
		return maxn;
	}
	public void setMaxn(int maxn) {
		this.maxn = maxn;
	}
	@Override
	public String toString() {
		return "MatchInfo [id=" + id + ", mtitle=" + mtitle + ", mdate=" + mdate + ", mdesc=" + mdesc + ", maxn=" + maxn
				+ "]";
	}
}
