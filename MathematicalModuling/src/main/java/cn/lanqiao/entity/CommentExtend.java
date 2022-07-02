package cn.lanqiao.entity;

import java.util.ArrayList;
import java.util.List;

public class CommentExtend {
	private Comment entity;
	private List<Comment> allSubComments = new ArrayList<Comment>();
	public Comment getEntity() {
		return entity;
	}
	public void setEntity(Comment entity) {
		this.entity = entity;
	}
	public List<Comment> getAllSubComments() {
		return allSubComments;
	}
	public void setAllSubComments(List<Comment> allSubComments) {
		this.allSubComments = allSubComments;
	}
	public CommentExtend(Comment entity, List<Comment> allSubComments) {
		super();
		this.entity = entity;
		this.allSubComments = allSubComments;
	}
	public CommentExtend() {}
}
