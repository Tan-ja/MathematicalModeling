package cn.lanqiao.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import cn.lanqiao.entity.Comment;
import cn.lanqiao.entity.User;
@Mapper
public interface CommentDao {
	// 添加评论
	public void addComment(Comment comment);
	// 根据id查找某个老师或学生的全部评论
	public List<Comment> getCommentById(String toid);
	// 修改评论赞成数量
	public void updateApprovalnumInComment(Integer comid, int approvalnum);
	// 根据userid修改评论中用户已经修改的头像路径
	void updateCommentByUserid(User user);
	// 分页查找所有用户评论
	List<Comment> getAllCommentByPage(String toid, int currentPage, int pageSize);
	// 获取某个用户评论下的子评论
	List<Comment> getAllSubCommment(Integer comid);
	// 更新用户评论
	@Select("select * from comment where toid=#{toid} and comid > ${comid}")
	List<Comment> updateComment(String toid, String otherid, Integer comid);
}
