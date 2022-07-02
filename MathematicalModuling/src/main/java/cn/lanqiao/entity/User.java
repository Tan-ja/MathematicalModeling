package cn.lanqiao.entity;

import java.io.Serializable;

public class User implements Serializable{
	private Integer userid;
	private String uemail;
	private String usernickname;
	private char usersex;
	private String createtime;
	private String userfaceaddress;
	private String userlevel;
	private String userfrom;
	private String usersignature;
	private String uloginid;
	private String upassword;
	private String uonline;
	private Integer urole;
	private String ustunum;
	private int ucent;
	public User(Integer userid, String uemail, String usernickname, char usersex, String createtime,
			String userfaceaddress, String userlevel, String userfrom, String usersignature, String uloginid,
			String upassword, String uonline, Integer urole, String ustunum, int ucent) {
		super();
		this.userid = userid;
		this.uemail = uemail;
		this.usernickname = usernickname;
		this.usersex = usersex;
		this.createtime = createtime;
		this.userfaceaddress = userfaceaddress;
		this.userlevel = userlevel;
		this.userfrom = userfrom;
		this.usersignature = usersignature;
		this.uloginid = uloginid;
		this.upassword = upassword;
		this.uonline = uonline;
		this.urole = urole;
		this.ustunum = ustunum;
		this.ucent = ucent;
	}
	public User() {}
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
	public String getUsernickname() {
		return usernickname;
	}
	public void setUsernickname(String usernickname) {
		this.usernickname = usernickname;
	}
	public char getUsersex() {
		return usersex;
	}
	public void setUsersex(char usersex) {
		this.usersex = usersex;
	}
	public String getCreatetime() {
		return createtime;
	}
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	public String getUserfaceaddress() {
		return userfaceaddress;
	}
	public void setUserfaceaddress(String userfaceaddress) {
		this.userfaceaddress = userfaceaddress;
	}
	public String getUserlevel() {
		return userlevel;
	}
	public void setUserlevel(String userlevel) {
		this.userlevel = userlevel;
	}
	public String getUserfrom() {
		return userfrom;
	}
	public void setUserfrom(String userfrom) {
		this.userfrom = userfrom;
	}
	public String getUsersignature() {
		return usersignature;
	}
	public void setUsersignature(String usersignature) {
		this.usersignature = usersignature;
	}
	public String getUloginid() {
		return uloginid;
	}
	public void setUloginid(String uloginid) {
		this.uloginid = uloginid;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	public String getUonline() {
		return uonline;
	}
	public void setUonline(String uonline) {
		this.uonline = uonline;
	}
	public Integer getUrole() {
		return urole;
	}
	public void setUrole(Integer urole) {
		this.urole = urole;
	}
	public String getUstunum() {
		return ustunum;
	}
	public void setUstunum(String ustunum) {
		this.ustunum = ustunum;
	}
	public int getUcent() {
		return ucent;
	}
	public void setUcent(int ucent) {
		this.ucent = ucent;
	}
	@Override
	public String toString() {
		return "User [userid=" + userid + ", uemail=" + uemail + ", usernickname=" + usernickname + ", usersex="
				+ usersex + ", createtime=" + createtime + ", userfaceaddress=" + userfaceaddress + ", userlevel="
				+ userlevel + ", userfrom=" + userfrom + ", usersignature=" + usersignature + ", uloginid=" + uloginid
				+ ", upassword=" + upassword + ", uonline=" + uonline + ", urole=" + urole + ", ustunum=" + ustunum
				+ ", ucent=" + ucent + "]";
	}
}
