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

import cn.lanqiao.entity.History;
import cn.lanqiao.service.HistoryService;

@CrossOrigin
@RequestMapping("/api/history")
@RestController
public class HistroyController {
	@Autowired
	private HistoryService historyService;
	@GetMapping("/allhistory")
	public Map<String, Object> getAllHistoryInfo(){
		Map<String, Object> map = new HashMap<String, Object>();
		List<History> allHistoryInfo = historyService.getAllHistory();
		if (allHistoryInfo != null && allHistoryInfo.size() != 0) {
			map.put("status", 200);
			map.put("statusText", "获取成功");
			map.put("history", allHistoryInfo);
		} else {
			map.put("status", 400);
			map.put("statusText", "数据获取异常");
		}
		return map;
	}
	@PostMapping("/addhistory")
	public Map<String, Object> addHistory(@RequestBody History newHistory){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean result = historyService.addHistory(newHistory);
		if (result) {
			map.put("status", 200);
			map.put("statusText", "添加成功");
		} else {
			map.put("status", 400);
			map.put("statusText", "添加异常");
		}
		return map;
	}
	@GetMapping("/deletehistory")
	public Map<String, Object> deleteHistory(Integer id){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean result = historyService.deleteHistoryById(id);
		if (result) {
			map.put("status", 200);
			map.put("statusText", "删除成功");
		} else {
			map.put("status", 400);
			map.put("statusText", "删除失败");
		}
		return map;
	}
	@PostMapping("/withlimit")
	public Map<String, Object> getHistoryWithLimit(@RequestBody History newHistory){
		Map<String, Object> map = new HashMap<String, Object>();
		List<History> allHistoryInfo = historyService.getHistoryWithLimit(newHistory);
		if (allHistoryInfo != null && allHistoryInfo.size() != 0) {
			map.put("status", 200);
			map.put("statusText", "获取成功");
			map.put("history", allHistoryInfo);
		} else {
			map.put("status", 400);
			map.put("statusText", "数据获取异常");
		}
		return map;
	}
	@PostMapping("/modify")
	public Map<String, Object> modifyHistory(@RequestBody History history){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean result = historyService.modifyHistory(history);
		if (result) {
			map.put("status", 200);
			map.put("statusText", "修改成功");
		} else {
			map.put("status", 400);
			map.put("statusText", "修改失败");
		}
		return map;
	}
}
