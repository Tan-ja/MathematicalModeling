package cn.lanqiao.entity;

import java.io.Serializable;

public class Student implements Serializable{
	private Integer sid;
	private String sname;
	private String sex;
	private String snativeplace;
	private String sbirthday;
	private String spoland;
	private String sgrade;
	private String smotto;
	private String sfaceaddress;
	private String sachieve;
	private String sposition;
	private String sdate;
	private String sfrom;
	private int scomment;
	private int sreaders;
	private int sthumbup;
	public Integer getSid() {
		return sid;
	}
	public void setSid(Integer sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getSnativeplace() {
		return snativeplace;
	}
	public void setSnativeplace(String snativeplace) {
		this.snativeplace = snativeplace;
	}
	public String getSbirthday() {
		return sbirthday;
	}
	public void setSbirthday(String sbirthday) {
		this.sbirthday = sbirthday;
	}
	public String getSpoland() {
		return spoland;
	}
	public void setSpoland(String spoland) {
		this.spoland = spoland;
	}
	public String getSgrade() {
		return sgrade;
	}
	public void setSgrade(String sgrade) {
		this.sgrade = sgrade;
	}
	public String getSmotto() {
		return smotto;
	}
	public void setSmotto(String smotto) {
		this.smotto = smotto;
	}
	public String getSfaceaddress() {
		return sfaceaddress;
	}
	public void setSfaceaddress(String sfaceaddress) {
		this.sfaceaddress = sfaceaddress;
	}
	public String getSachieve() {
		return sachieve;
	}
	public void setSachieve(String sachieve) {
		this.sachieve = sachieve;
	}
	public String getSposition() {
		return sposition;
	}
	public void setSposition(String sposition) {
		this.sposition = sposition;
	}
	public String getSdate() {
		return sdate;
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	public String getSfrom() {
		return sfrom;
	}
	public void setSfrom(String sfrom) {
		this.sfrom = sfrom;
	}
	public int getScomment() {
		return scomment;
	}
	public void setScomment(int scomment) {
		this.scomment = scomment;
	}
	public int getSreaders() {
		return sreaders;
	}
	public void setSreaders(int sreaders) {
		this.sreaders = sreaders;
	}
	public int getSthumbup() {
		return sthumbup;
	}
	public void setSthumbup(int sthumbup) {
		this.sthumbup = sthumbup;
	}
	public Student(Integer sid, String sname, String sex, String snativeplace, String sbirthday, String spoland,
			String sgrade, String smotto, String sfaceaddress, String sachieve, String sposition, String sdate,
			String sfrom, int scomment, int sreaders, int sthumbup) {
		super();
		this.sid = sid;
		this.sname = sname;
		this.sex = sex;
		this.snativeplace = snativeplace;
		this.sbirthday = sbirthday;
		this.spoland = spoland;
		this.sgrade = sgrade;
		this.smotto = smotto;
		this.sfaceaddress = sfaceaddress;
		this.sachieve = sachieve;
		this.sposition = sposition;
		this.sdate = sdate;
		this.sfrom = sfrom;
		this.scomment = scomment;
		this.sreaders = sreaders;
		this.sthumbup = sthumbup;
	}
	public Student() {}
}
