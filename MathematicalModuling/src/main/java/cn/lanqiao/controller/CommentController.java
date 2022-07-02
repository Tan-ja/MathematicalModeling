package cn.lanqiao.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.alibaba.druid.support.logging.Log;
import com.alibaba.druid.support.logging.Log4j2Impl;

import cn.lanqiao.entity.Comment;
import cn.lanqiao.entity.CommentExtend;
import cn.lanqiao.entity.UserOperation;
import cn.lanqiao.service.AcademicService;
import cn.lanqiao.service.CommentService;
import cn.lanqiao.service.TeacherAndStudentService;
import cn.lanqiao.service.UserOperationService;

@CrossOrigin // 跨域
@RequestMapping("/api/comment") // 窄化路径
@RestController // 将该类中的所有的返回数据转换成JSON格式
public class CommentController {
	@Autowired
	private CommentService commentService;
	@Autowired
	private AcademicService academic;
	@Autowired
	private TeacherAndStudentService teaAndStu;
	@Autowired
	private UserOperationService userOperationService;
	@PostMapping("insertment")
	public Map<String, Object> addComment(@RequestBody Comment comment){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean insertComment = false;
		boolean updateCommentTimes = false;
		if (comment != null) {
			String[] academicId = comment.getToid().split(":");
			insertComment = commentService.addComment(comment);
			updateCommentTimes = academic.updateAcomment(Integer.parseInt(academicId[1]));
			if ("T".equals(academicId[0]) || "t".equals(academicId[0])) {
				teaAndStu.updateTeacherCommentNum(Integer.parseInt(academicId[1]));
			} else if ("S".equals(academicId[0]) || "s".equals(academicId[0])) {
				teaAndStu.updateStudentCommentNum(Integer.parseInt(academicId[1]));
			}
		}
		if (insertComment && updateCommentTimes) {
			map.put("status", 200);
			map.put("statusText", "评论成功");
			UserOperation userOperation = new UserOperation();
			userOperation.setOdate(comment.getComdate());
			userOperation.setOperation("评论");
			userOperation.setOtherid(comment.getToid());
			userOperation.setUserid(comment.getUserid());
			userOperationService.addUserOperation(userOperation);
		} else {
			map.put("status", 400);
			map.put("statusText", "评论失败");
		}
		return map;
	}
	@GetMapping("/getcomment")
	public Map<String, Object> getCommentById(String toid){
		Map<String, Object> map = new HashMap<String, Object>();
		List<Comment> comments = null;
		if (toid != null) {
			comments = commentService.getCommentById(toid);
		} else {
			map.put("status", 401);
			map.put("statusText", "无效id");
			return map;
		}
		if(comments != null) {
			map.put("status", 200);
			map.put("comments", comments);
			map.put("statusText", "评论获取成功");
		} else {
			map.put("status", 400);
			map.put("statusText", "评论获取失败");
		}
		return map;
	}
	// 修改评论赞成数量
	@GetMapping("/updateapprovalnum")
	public Map<String, Object> updateApprovalnumById(Integer comid, int approvalnum){
		Map<String, Object> map = new HashMap<String, Object>();
		if (comid != null) {
			commentService.updateApprovalnumInComment(comid, approvalnum);
			map.put("status", 200);
			map.put("statusText", "修改成功");
		} else {
			map.put("status", 400);
			map.put("statusText", "网络错误");
		}
		return map;
	}
	// 分页查询所有用户的评论
	@GetMapping("/allcommentbypage")
	public Map<String, Object> getAllCommentByPage(String toid, int currentPage, int pageSize){
		Map<String, Object> map = new HashMap<String, Object>();
		List<Comment> allCommentByPage = commentService.getAllCommentByPage(toid, currentPage, pageSize);
		List<CommentExtend> allCommentExtend = new ArrayList<CommentExtend>();
		List<Comment> allSubComment = null;
		CommentExtend newCommentExtend = null;
		Log l = new Log4j2Impl("logdebug");
		if (allCommentByPage != null && allCommentByPage.size() > 0) {
			for (int i = 0;i < allCommentByPage.size();i++) {
				newCommentExtend = new CommentExtend();
				newCommentExtend.setEntity(allCommentByPage.get(i));
				newCommentExtend.getAllSubComments().add(allCommentByPage.get(i));
				allSubComment = commentService.getAllSubCommment(allCommentByPage.get(i).getComid());
				if (allSubComment != null && allSubComment.size() > 0) {
					for (int j = 0;j < allSubComment.size();j++) {
						newCommentExtend.getAllSubComments().add(allSubComment.get(j));
					}
				}
				allCommentExtend.add(newCommentExtend);
			}
		}
		if (allCommentExtend != null && allCommentExtend.size() > 0) {
			map.put("status", 200);
			map.put("allcomments", allCommentExtend);
			map.put("totalRow", allCommentByPage.size());
			map.put("statusText", "成功获取所有用户评论");
		} else {
			map.put("status", 404);
			map.put("statusText", "暂无评论");
		}
		return map;
	}
	// 分页查询所有用户的评论
	@GetMapping("/allcommentbypageanddate")
	public Map<String, Object> getAllCommentByPageAndDate(String toid, String otherid, Integer comid){
		Map<String, Object> map = new HashMap<String, Object>();
		List<Comment> comment = commentService.updateComment(toid, otherid, comid);
		System.out.println(comment);
		if (comment != null) {
			map.put("status", 200);
			map.put("updatecomment", comment);
		}
		return map;
	}
}
