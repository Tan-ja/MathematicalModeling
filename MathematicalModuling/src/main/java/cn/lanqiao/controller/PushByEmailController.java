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

import cn.lanqiao.entity.PushByEmail;
import cn.lanqiao.service.PushByEmailService;

@CrossOrigin // 跨域
@RequestMapping("/api/pushbyemail") // 窄化路径
@RestController // 将该类中的所有的返回数据转换成JSON格式
public class PushByEmailController {
	@Autowired
	private PushByEmailService pbeService;
	@PostMapping("/addpush")
	public Map<String, Object> addParticipant(@RequestBody PushByEmail pushByEmail){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = pbeService.addPushByEmail(pushByEmail);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "添加成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "添加失败");
		}
		return map;
	}
	@GetMapping("/deletebyuserid")
	public Map<String, Object> deletePushByUserid(Integer userid){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = pbeService.deleteByUserId(userid);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "删除成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "删除失败");
		}
		return map;
	}
	@GetMapping("/deletebyid")
	public Map<String, Object> deletePushById(Integer id){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = pbeService.deleeById(id);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "删除成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "删除失败");
		}
		return map;
	}
	@PostMapping("/updatepush")
	public Map<String, Object> updateParticipant(@RequestBody PushByEmail pushByEmail){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = pbeService.updatePushByEmail(pushByEmail);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "添加成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "添加失败");
		}
		return map;
	}
	@GetMapping("/getallpush")
	public Map<String, Object> getALLPushByEmail(){
		Map<String, Object> map = new HashMap<String, Object>();
		List<PushByEmail> allPushByEmail = pbeService.getAllPushByEmail();
		if (allPushByEmail != null) {
			map.put("status", 200);
			map.put("allpushbyemail", allPushByEmail);
			map.put("statusText", "成功获取");
		} else {
			map.put("status", 500);
			map.put("statusText", "暂无数据");
		}
		return map;
	}
	@GetMapping("/getpushbyuserid")
	public Map<String, Object> getPushByUserid(Integer userid){
		Map<String, Object> map = new HashMap<String, Object>();
		PushByEmail pushByEmail = pbeService.getPushByEmailByUserid(userid);
		if (pushByEmail != null) {
			map.put("status", 200);
			map.put("pushbyemail", pushByEmail);
			map.put("statusText", "成功获取");
		} else {
			map.put("status", 500);
			map.put("statusText", "暂无数据");
		}
		return map;
	}
	@GetMapping("/getpushbyid")
	public Map<String, Object> getPushById(Integer id){
		Map<String, Object> map = new HashMap<String, Object>();
		PushByEmail pushByEmail = pbeService.getPushByEmailById(id);
		if (pushByEmail != null) {
			map.put("status", 200);
			map.put("pushbyemail", pushByEmail);
			map.put("statusText", "成功获取");
		} else {
			map.put("status", 500);
			map.put("statusText", "暂无数据");
		}
		return map;
	}
	@GetMapping("/isbind")
	public Map<String, Object> isBind(Integer userid){
		Map<String, Object> map = new HashMap<String, Object>();
		PushByEmail pushByEmail = pbeService.getPushByEmailById(userid);
		if (pushByEmail == null) {
			map.put("isBind", 1);
		} else {
			map.put("isBind", 0);
		}
		if (pushByEmail != null) {
			map.put("status", 200);
			map.put("statusText", "成功获取");
		} else {
			map.put("status", 500);
			map.put("statusText", "暂无数据");
		}
		return map;
	}
}
