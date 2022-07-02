package cn.lanqiao.controller;

import java.io.IOException;
import java.sql.Date;
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
import com.alibaba.druid.support.logging.Log4jImpl;
import com.fasterxml.jackson.databind.ObjectMapper;

import cn.lanqiao.entity.Participant;
import cn.lanqiao.entity.TeamInfo;
import cn.lanqiao.entity.User;
import cn.lanqiao.service.ParticipantService;
import cn.lanqiao.service.UserService;

@CrossOrigin // 跨域
@RequestMapping("/api/participant") // 窄化路径
@RestController // 将该类中的所有的返回数据转换成JSON格式
public class ParticipantController {
	@Autowired
	private ParticipantService ps;
	@PostMapping("/addparticipant")
	public Map<String, Object> addParticipant(@RequestBody Participant participant){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = ps.addNewParticipant(participant);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "添加成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "添加失败");
		}
		return map;
	}
	@GetMapping("/getparticipantbyid")
	public Map<String, Object> getParticipantById(Integer id){
		Map<String, Object> map = new HashMap<String, Object>();
		Participant participant = ps.getParticipantById(id);
		if (participant != null) {
			map.put("status", 200);
			map.put("participant", participant);
			map.put("statusText", "添加成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "添加失败");
		}
		return map;
	}
	@PostMapping("/updateparticipant")
	public Map<String, Object> updateMatchInfo(@RequestBody Participant participant){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = ps.updateInfoOfParticipant(participant);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "修改成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "修改失败");
		}
		return map;
	}
	@GetMapping("/deleteparticipantbyid")
	public Map<String, Object> deleteParticipantById(Integer id){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = ps.deleteParticipantById(id);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "删除成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "删除失败");
		}
		return map;
	}
	@GetMapping("/getallparticipant")
	public Map<String, Object> getAllParticipant(){
		Map<String, Object> map = new HashMap<String, Object>();
		List<Participant> allParticipant = ps.getAllParticipant();
		if (allParticipant != null) {
			map.put("status", 200);
			map.put("allparticipant", allParticipant);
			map.put("statusText", "删除成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "删除失败");
		}
		return map;
	}
}
