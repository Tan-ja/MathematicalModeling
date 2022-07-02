package cn.lanqiao.entity;

import java.io.Serializable;
import java.util.List;

public class AcademicExtend implements Serializable{
	private Integer adid;
	private String acategory;
	private String adate;
	private int aconsider;
	private int acomment;
	private int areaders;
	private String atitle;
	private String afrom;
	private String acontent;
	private String afaceaddress;
	private String acontentdesc;
	private List<String> filepath;
	public AcademicExtend(Integer adid, String acategory, String adate, int aconsider, int acomment, int areaders,
			String atitle, String afrom, String acontent, String afaceaddress, String acontentdesc,
			List<String> filepath) {
		super();
		this.adid = adid;
		this.acategory = acategory;
		this.adate = adate;
		this.aconsider = aconsider;
		this.acomment = acomment;
		this.areaders = areaders;
		this.atitle = atitle;
		this.afrom = afrom;
		this.acontent = acontent;
		this.afaceaddress = afaceaddress;
		this.acontentdesc = acontentdesc;
		this.filepath = filepath;
	}
	public AcademicExtend() {}
	public Integer getAdid() {
		return adid;
	}
	public void setAdid(Integer adid) {
		this.adid = adid;
	}
	public String getAcategory() {
		return acategory;
	}
	public void setAcategory(String acategory) {
		this.acategory = acategory;
	}
	public String getAdate() {
		return adate;
	}
	public void setAdate(String adate) {
		this.adate = adate;
	}
	public int getAconsider() {
		return aconsider;
	}
	public void setAconsider(int aconsider) {
		this.aconsider = aconsider;
	}
	public int getAcomment() {
		return acomment;
	}
	public void setAcomment(int acomment) {
		this.acomment = acomment;
	}
	public int getAreaders() {
		return areaders;
	}
	public void setAreaders(int areaders) {
		this.areaders = areaders;
	}
	public String getAtitle() {
		return atitle;
	}
	public void setAtitle(String atitle) {
		this.atitle = atitle;
	}
	public String getAfrom() {
		return afrom;
	}
	public void setAfrom(String afrom) {
		this.afrom = afrom;
	}
	public String getAcontent() {
		return acontent;
	}
	public void setAcontent(String acontent) {
		this.acontent = acontent;
	}
	public String getAfaceaddress() {
		return afaceaddress;
	}
	public void setAfaceaddress(String afaceaddress) {
		this.afaceaddress = afaceaddress;
	}
	public String getAcontentdesc() {
		return acontentdesc;
	}
	public void setAcontentdesc(String acontentdesc) {
		this.acontentdesc = acontentdesc;
	}
	public List<String> getFilepath() {
		return filepath;
	}
	public void setFilepath(List<String> filepath) {
		this.filepath = filepath;
	}
	@Override
	public String toString() {
		return "AcademicExtend [adid=" + adid + ", acategory=" + acategory + ", adate=" + adate + ", aconsider="
				+ aconsider + ", acomment=" + acomment + ", areaders=" + areaders + ", atitle=" + atitle + ", afrom="
				+ afrom + ", acontent=" + acontent + ", afaceaddress=" + afaceaddress + ", acontentdesc=" + acontentdesc
				+ ", filepath=" + filepath + "]";
	}
}
