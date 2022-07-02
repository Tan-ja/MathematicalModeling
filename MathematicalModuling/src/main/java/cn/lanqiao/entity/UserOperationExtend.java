package cn.lanqiao.entity;

public class UserOperationExtend {
	private Integer id;
	private Object entity;
	private String odate;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Object getEntity() {
		return entity;
	}
	public void setEntity(Object entity) {
		this.entity = entity;
	}
	public String getOdate() {
		return odate;
	}
	public void setOdate(String odate) {
		this.odate = odate;
	}
	public UserOperationExtend(Integer id, Object entity, String odate) {
		super();
		this.id = id;
		this.entity = entity;
		this.odate = odate;
	}
	public UserOperationExtend() {
		super();
	}
}
