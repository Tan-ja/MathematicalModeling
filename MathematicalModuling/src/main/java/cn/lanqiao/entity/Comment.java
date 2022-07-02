package cn.lanqiao.entity;

import java.io.Serializable;

public class Comment implements Serializable{
	private Integer comid; // 评论表唯一标识符
	private int userid; // 用户id
	private String usernickname; // 用户昵称
	private String userlevel; // 用户等级
	private String comdate; // 用户评论时间
	private String toid; // 被评论的老师或同学id
	private String comment; // 评论的内容
	private String userfaceaddress; //用户头像
	private int approvalnum; // 评论赞成数
	private Integer superid;
	private String othernickname;
	private Integer ouserid;
	public Comment(Integer comid, int userid, String usernickname, String userlevel, String comdate, String toid,
			String comment, String userfaceaddress, int approvalnum, Integer superid, String othernickname,
			Integer ouserid) {
		super();
		this.comid = comid;
		this.userid = userid;
		this.usernickname = usernickname;
		this.userlevel = userlevel;
		this.comdate = comdate;
		this.toid = toid;
		this.comment = comment;
		this.userfaceaddress = userfaceaddress;
		this.approvalnum = approvalnum;
		this.superid = superid;
		this.othernickname = othernickname;
		this.ouserid = ouserid;
	}
	public Comment() {}
	public Integer getComid() {
		return comid;
	}
	public void setComid(Integer comid) {
		this.comid = comid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsernickname() {
		return usernickname;
	}
	public void setUsernickname(String usernickname) {
		this.usernickname = usernickname;
	}
	public String getUserlevel() {
		return userlevel;
	}
	public void setUserlevel(String userlevel) {
		this.userlevel = userlevel;
	}
	public String getComdate() {
		return comdate;
	}
	public void setComdate(String comdate) {
		this.comdate = comdate;
	}
	public String getToid() {
		return toid;
	}
	public void setToid(String toid) {
		this.toid = toid;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getUserfaceaddress() {
		return userfaceaddress;
	}
	public void setUserfaceaddress(String userfaceaddress) {
		this.userfaceaddress = userfaceaddress;
	}
	public int getApprovalnum() {
		return approvalnum;
	}
	public void setApprovalnum(int approvalnum) {
		this.approvalnum = approvalnum;
	}
	public Integer getSuperid() {
		return superid;
	}
	public void setSuperid(Integer superid) {
		this.superid = superid;
	}
	public String getOthernickname() {
		return othernickname;
	}
	public void setOthernickname(String othernickname) {
		this.othernickname = othernickname;
	}
	public Integer getOuserid() {
		return ouserid;
	}
	public void setOuserid(Integer ouserid) {
		this.ouserid = ouserid;
	}
}
