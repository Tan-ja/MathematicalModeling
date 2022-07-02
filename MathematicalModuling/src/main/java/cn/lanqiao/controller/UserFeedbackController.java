package cn.lanqiao.controller;

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

import cn.lanqiao.entity.Comment;
import cn.lanqiao.entity.Page;
import cn.lanqiao.entity.UserFeedback;
import cn.lanqiao.service.UserFeedbackService;

@CrossOrigin // 跨域
@RequestMapping("/api/userfeedback") // 窄化路径
@RestController // 将该类中的所有的返回数据转换成JSON格式
public class UserFeedbackController {
	@Autowired
	private UserFeedbackService userFeed;
	@PostMapping("/adduserfeedback")
	public Map<String, Object> addUserFeedback(@RequestBody UserFeedback userFeedback){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = userFeed.addUserFeedback(userFeedback);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "添加成功");
		} else {
			map.put("status", 400);
			map.put("statusText", "添加失败");
		}
		return map;
	}
	@GetMapping("/getuserfeedbypage")
	public Map<String, Object> getAllUserFeedbackByPage(int currentPage, int pageSize){
		Map<String, Object> map = new HashMap<String, Object>();
		List<UserFeedback> allUserFeedback = userFeed.getAllUserFeedback();
		List<UserFeedback> allUserFeedbackByPage = userFeed.getAllUserFeedbankByPage(currentPage, pageSize);
		int pageCount = 0;
		Page<UserFeedback> page = new Page<UserFeedback>();
		if (allUserFeedbackByPage != null && allUserFeedbackByPage.size() > 0) {
			page.setCurrentPage(currentPage);
			page.setPageSize(pageSize);
			page.setTotal(allUserFeedback.size());
			pageCount = allUserFeedback.size() % pageSize == 0?(allUserFeedback.size() / pageSize) : (allUserFeedback.size() / pageSize + 1);
			page.setList(allUserFeedbackByPage);
			page.setPageCount(pageCount);
			map.put("userfeedback", page);
			map.put("status", 200);
			map.put("statusText", "获取成功");
			return map;
		} else {
			map.put("status", 400);
			map.put("statusText", "没有相关信息");
		}
		return map;
	}
	@PostMapping("/updateuserfeed")
	public Map<String, Object> updateUserFeedback(@RequestBody UserFeedback userFeedback){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = userFeed.updateUserFeedback(userFeedback);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "修改成功");
		} else {
			map.put("status", 400);
			map.put("statusText", "修改失败");
		}
		return map;
	}
	@GetMapping("/deleteuserfeed")
	public Map<String, Object> deleteUserFeedback(Integer pid){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = userFeed.deleteUserFeedback(pid);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "删除成功");
		} else {
			map.put("status", 400);
			map.put("statusText", "删除失败");
		}
		return map;
	}
	@GetMapping("/getuserfeedbackbypid")
	public Map<String, Object> getUserFeedbackByPid(Integer pid){
		Map<String, Object> map = new HashMap<String, Object>();
		UserFeedback userFeedback = userFeed.getAllUserFeedbankPid(pid);
		if (userFeedback != null) {
			map.put("status", 200);
			map.put("userfeedback", userFeedback);
			map.put("statusText", "获取成功");
		} else {
			map.put("status", 400);
			map.put("statusText", "获取失败");
		}
		return map;
	}
	@GetMapping("/getuserfeedbyuloginid")
	public Map<String, Object> getAllUserFeedbankByUloginid(String uloginid){
		Map<String, Object> map = new HashMap<String, Object>();
		List<UserFeedback> userUserFeed = userFeed.getAllUserFeedbankByUloginid(uloginid);
		if (userUserFeed != null && userUserFeed.size() > 0) {
			map.put("status", 200);
			map.put("userfeedback", userUserFeed);
			map.put("statusText", "删除成功");
		} else {
			map.put("status", 400);
			map.put("statusText", "没有数据");
		}
		return map;
	}
}
