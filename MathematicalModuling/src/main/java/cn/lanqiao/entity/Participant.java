package cn.lanqiao.entity;

import java.io.Serializable;

public class Participant implements Serializable{
	private Integer id;
	private String pname;
	private String pstunum;
	private String pgrade;
	private String pacademy;
	private String pdormitoryno;
	private String pcampus;
	private String pnativeplace;
	private String pidnumber;
	private String pqqno;
	private String pmobilephoneno;
	private String email;
	private String pattendeddesc;
	public Participant(Integer id, String pname, String pstunum, String pgrade, String pacademy, String pdormitoryno,
			String pcampus, String pnativeplace, String pidnumber, String pqqno, String pmobilephoneno, String email,
			String pattendeddesc) {
		super();
		this.id = id;
		this.pname = pname;
		this.pstunum = pstunum;
		this.pgrade = pgrade;
		this.pacademy = pacademy;
		this.pdormitoryno = pdormitoryno;
		this.pcampus = pcampus;
		this.pnativeplace = pnativeplace;
		this.pidnumber = pidnumber;
		this.pqqno = pqqno;
		this.pmobilephoneno = pmobilephoneno;
		this.email = email;
		this.pattendeddesc = pattendeddesc;
	}
	public Participant() {}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPstunum() {
		return pstunum;
	}
	public void setPstunum(String pstunum) {
		this.pstunum = pstunum;
	}
	public String getPgrade() {
		return pgrade;
	}
	public void setPgrade(String pgrade) {
		this.pgrade = pgrade;
	}
	public String getPacademy() {
		return pacademy;
	}
	public void setPacademy(String pacademy) {
		this.pacademy = pacademy;
	}
	public String getPdormitoryno() {
		return pdormitoryno;
	}
	public void setPdormitoryno(String pdormitoryno) {
		this.pdormitoryno = pdormitoryno;
	}
	public String getPcampus() {
		return pcampus;
	}
	public void setPcampus(String pcampus) {
		this.pcampus = pcampus;
	}
	public String getPnativeplace() {
		return pnativeplace;
	}
	public void setPnativeplace(String pnativeplace) {
		this.pnativeplace = pnativeplace;
	}
	public String getPidnumber() {
		return pidnumber;
	}
	public void setPidnumber(String pidnumber) {
		this.pidnumber = pidnumber;
	}
	public String getPqqno() {
		return pqqno;
	}
	public void setPqqno(String pqqno) {
		this.pqqno = pqqno;
	}
	public String getPmobilephoneno() {
		return pmobilephoneno;
	}
	public void setPmobilephoneno(String pmobilephoneno) {
		this.pmobilephoneno = pmobilephoneno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPattendeddesc() {
		return pattendeddesc;
	}
	public void setPattendeddesc(String pattendeddesc) {
		this.pattendeddesc = pattendeddesc;
	}
	@Override
	public String toString() {
		return "Participant [id=" + id + ", pname=" + pname + ", pstunum=" + pstunum + ", pgrade=" + pgrade
				+ ", pacademy=" + pacademy + ", pdormitoryno=" + pdormitoryno + ", pcampus=" + pcampus
				+ ", pnativeplace=" + pnativeplace + ", pidnumber=" + pidnumber + ", pqqno=" + pqqno
				+ ", pmobilephoneno=" + pmobilephoneno + ", email=" + email + ", pattendeddesc=" + pattendeddesc + "]";
	}
}
