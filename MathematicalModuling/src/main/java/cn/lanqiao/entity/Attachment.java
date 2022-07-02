package cn.lanqiao.entity;

import java.io.Serializable;

public class Attachment implements Serializable{
	private Integer id;
	private Integer objid;
	private String filename;
	private int acategory;
	public Attachment(Integer id, Integer objid, String filename, int acategory) {
		super();
		this.id = id;
		this.objid = objid;
		this.filename = filename;
		this.acategory = acategory;
	}
	public Attachment() {}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getObjid() {
		return objid;
	}
	public void setObjid(Integer objid) {
		this.objid = objid;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public int getAcategory() {
		return acategory;
	}
	public void setAcategory(int acategory) {
		this.acategory = acategory;
	}
	@Override
	public String toString() {
		return "Attachment [id=" + id + ", objid=" + objid + ", filename=" + filename + ", acategory=" + acategory
				+ "]";
	}
}
