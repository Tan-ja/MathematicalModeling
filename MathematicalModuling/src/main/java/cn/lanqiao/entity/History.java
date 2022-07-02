package cn.lanqiao.entity;

import java.io.Serializable;

public class History implements Serializable{
	private Integer id;
	private String timey;
	private String timem;
	private String event;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTimey() {
		return timey;
	}
	public void setTimey(String timey) {
		this.timey = timey;
	}
	public String getTimem() {
		return timem;
	}
	public void setTimem(String timem) {
		this.timem = timem;
	}
	public String getEvent() {
		return event;
	}
	public void setEvent(String event) {
		this.event = event;
	}
	public History(Integer id, String timey, String timem, String event) {
		super();
		this.id = id;
		this.timey = timey;
		this.timem = timem;
		this.event = event;
	}
	public History() {}
}
