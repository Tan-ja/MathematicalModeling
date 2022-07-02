package cn.lanqiao.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.lanqiao.dao.CommentDao;
import cn.lanqiao.entity.Comment;
import cn.lanqiao.entity.User;
import cn.lanqiao.service.CommentService;
@Service
public class CommentServiceImpl implements CommentService {
	@Autowired
	private CommentDao commentDao;
	@Override
	public boolean addComment(Comment comment) {
		// TODO Auto-generated method stub
		if (comment != null) {
			commentDao.addComment(comment);
			return true;
		}
		return false;
	}

	@Override
	public List<Comment> getCommentById(String toid) {
		// TODO Auto-generated method stub
		List<Comment> comments = null;
		if (toid != null) {
			comments = commentDao.getCommentById(toid);
		}
		return comments;
	}

	@Override
	public void updateApprovalnumInComment(Integer comid, int approvalnum) {
		// TODO Auto-generated method stub
		if (comid != null) {
			commentDao.updateApprovalnumInComment(comid, approvalnum);
		}
	}

	@Override
	public boolean updateCommentByUserid(User user) {
		// TODO Auto-generated method stub
		if (user != null) {
			commentDao.updateCommentByUserid(user);
			return true;
		}
		return false;
	}

	@Override
	public List<Comment> getAllCommentByPage(String toid, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		if (toid != null && !"".equals(toid)) {
			return commentDao.getAllCommentByPage(toid, currentPage, pageSize);
		}
		return null;
	}

	@Override
	public List<Comment> getAllSubCommment(Integer comid) {
		// TODO Auto-generated method stub
		if (comid != null && comid != 0) {
			return commentDao.getAllSubCommment(comid);			
		}
		return null;
	}

	@Override
	public List<Comment> updateComment(String toid, String otherid, Integer comid) {
		// TODO Auto-generated method stub
		System.out.println(toid);
		System.out.println(comid);
		if (toid != null && comid >= 0) {
			return commentDao.updateComment(toid, otherid, comid);
		}
		return null;
	}
}
