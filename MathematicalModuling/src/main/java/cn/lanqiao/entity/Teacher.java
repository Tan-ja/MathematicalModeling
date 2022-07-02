package cn.lanqiao.entity;

import java.io.Serializable;
import java.util.List;

public class Teacher implements Serializable{
	private Integer uid;
	private String uname;
	private String usex;
	private String uprofession;
	private String unativeplace;
	private String uintroduction;
	private String uaddress;
	private String uphonenum;
	private String uemail;
	private String ufaceaddress;
	private String udesc;
	private String udate;
	private String ufrom;
	private int ucomment;
	private int ureaders;
	private int uthumbup;
	private List<String> exDesc;
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUsex() {
		return usex;
	}
	public void setUsex(String usex) {
		this.usex = usex;
	}
	public String getUprofession() {
		return uprofession;
	}
	public void setUprofession(String uprofession) {
		this.uprofession = uprofession;
	}
	public String getUnativeplace() {
		return unativeplace;
	}
	public void setUnativeplace(String unativeplace) {
		this.unativeplace = unativeplace;
	}
	public String getUintroduction() {
		return uintroduction;
	}
	public void setUintroduction(String uintroduction) {
		this.uintroduction = uintroduction;
	}
	public String getUaddress() {
		return uaddress;
	}
	public void setUaddress(String uaddress) {
		this.uaddress = uaddress;
	}
	public String getUphonenum() {
		return uphonenum;
	}
	public void setUphonenum(String uphonenum) {
		this.uphonenum = uphonenum;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUfaceaddress() {
		return ufaceaddress;
	}
	public void setUfaceaddress(String ufaceaddress) {
		this.ufaceaddress = ufaceaddress;
	}
	public String getUdesc() {
		return udesc;
	}
	public void setUdesc(String udesc) {
		this.udesc = udesc;
	}
	public String getUdate() {
		return udate;
	}
	public void setUdate(String udate) {
		this.udate = udate;
	}
	public String getUfrom() {
		return ufrom;
	}
	public void setUfrom(String ufrom) {
		this.ufrom = ufrom;
	}
	public int getUcomment() {
		return ucomment;
	}
	public void setUcomment(int ucomment) {
		this.ucomment = ucomment;
	}
	public int getUreaders() {
		return ureaders;
	}
	public void setUreaders(int ureaders) {
		this.ureaders = ureaders;
	}
	public int getUthumbup() {
		return uthumbup;
	}
	public void setUthumbup(int uthumbup) {
		this.uthumbup = uthumbup;
	}
	public List<String> getExDesc() {
		return exDesc;
	}
	public void setExDesc(List<String> exDesc) {
		this.exDesc = exDesc;
	}
	public Teacher(Integer uid, String uname, String usex, String uprofession, String unativeplace,
			String uintroduction, String uaddress, String uphonenum, String uemail, String ufaceaddress, String udesc,
			String udate, String ufrom, int ucomment, int ureaders, int uthumbup, List<String> exDesc) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.usex = usex;
		this.uprofession = uprofession;
		this.unativeplace = unativeplace;
		this.uintroduction = uintroduction;
		this.uaddress = uaddress;
		this.uphonenum = uphonenum;
		this.uemail = uemail;
		this.ufaceaddress = ufaceaddress;
		this.udesc = udesc;
		this.udate = udate;
		this.ufrom = ufrom;
		this.ucomment = ucomment;
		this.ureaders = ureaders;
		this.uthumbup = uthumbup;
		this.exDesc = exDesc;
	}
	public Teacher() {}
}
