package cn.lanqiao.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.codec.multipart.FilePart;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lowagie.text.Document;

import cn.lanqiao.entity.MatchInfo;
import cn.lanqiao.entity.Page;
import cn.lanqiao.entity.Participant;
import cn.lanqiao.entity.PreReadUploadConfig;
import cn.lanqiao.entity.PushByEmail;
import cn.lanqiao.entity.TeamInfo;
import cn.lanqiao.service.MatchInfoService;
import cn.lanqiao.service.ParticipantService;
import cn.lanqiao.service.PushByEmailService;
import cn.lanqiao.service.TeamInfoService;
import cn.lanqiao.util.SendmailUtil;
import cn.lanqiao.util.TableToWordUtil;

@CrossOrigin // 跨域
@RequestMapping("/api/matchinfo") // 窄化路径
@RestController // 将该类中的所有的返回数据转换成JSON格式
public class MatchInfoController {
	@Autowired
	private MatchInfoService matchInfoService;
	@Autowired
	private TeamInfoService tfService;
	@Autowired
	private ParticipantService ps;
	@Autowired
	private PushByEmailService pbeService;
	@Autowired
	private TableToWordUtil tableToWordUtil;
	@Autowired
	private PreReadUploadConfig prConfig;
	@PostMapping("/addmatchinfo")
	public Map<String, Object> addMatchInfo(@RequestBody MatchInfo matchInfo){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = matchInfoService.addNewMatch(matchInfo);
		if (isSuccess) {
			List<PushByEmail> allPushByEmail = pbeService.getAllPushByEmail();
			if (allPushByEmail != null) {
				new MatchInfoController().new SendMatchInfoToUserThread(allPushByEmail, matchInfo).start();
			}
			map.put("status", 200);
			map.put("statusText", "添加成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "添加失败");
		}
		return map;
	}
	class SendMatchInfoToUserThread extends Thread{
		List<PushByEmail> allPushByEmail;
		MatchInfo matchInfo;
		public SendMatchInfoToUserThread(List<PushByEmail> allPushByEmail, MatchInfo matchInfo) {
			super();
			this.allPushByEmail = allPushByEmail;
			this.matchInfo = matchInfo;
		}
		public SendMatchInfoToUserThread() {}
		@Override
		public void run() {
			// TODO Auto-generated method stub
			try {
				if (allPushByEmail.size() > 0) {
					for (int i = 0;i < allPushByEmail.size();i++) {
						PushByEmail pushByEmail = allPushByEmail.get(i);
						try {
							SendmailUtil.sendEmail(pushByEmail.getUemail(), "数模人数学建模竞赛网站", matchInfo.getMdesc());
						} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	@PostMapping("/updatematchinfo")
	public Map<String, Object> updateMatchInfo(@RequestBody MatchInfo matchInfo){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = matchInfoService.updateMatch(matchInfo);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "修改成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "修改失败");
		}
		return map;
	}
	@GetMapping("/deletematchinfo")
	public Map<String, Object> deleteMatchInfo(Integer id){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = matchInfoService.deleteOldMatch(id);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "删除成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "删除失败");
		}
		return map;
	}
	@GetMapping("/getallmatchbypage")
	public Map<String, Object> getAllMatchInfoByPage(int currentPage, int pageSize, String search){
		Map<String, Object> map = new HashMap<String, Object>();
		List<MatchInfo> allMatchByPage = matchInfoService.getAllMatchByPage(currentPage, pageSize, search);
		Page<MatchInfo> page = new Page<MatchInfo>();
		page.setCurrentPage(currentPage);
		page.setPageSize(pageSize);
		page.setTotal(matchInfoService.getAllMatch(search).size());
		page.setList(allMatchByPage);
		page.setPageCount(page.getTotal() % pageSize == 0 ? (page.getTotal() / pageSize) : (page.getTotal() / pageSize + 1));
		if (allMatchByPage != null && allMatchByPage.size() > 0) {
			map.put("status", 200);
			map.put("allmatchbypage", page);
			map.put("statusText", "已获取全部数据");
		} else {
			map.put("status", 500);
			map.put("statusText", "暂无数据");
		}
		return map;
	}
	@GetMapping("/getallmatchinfo")
	public Map<String, Object> getAllMatchInfo() {
		Map<String, Object> map = new HashMap<String, Object>();
		List<MatchInfo> allMatch = matchInfoService.getAllMatch("");
		if (allMatch != null && allMatch.size() > 0) {
			map.put("status", 200);
			map.put("allmatchbypage", allMatch);
			map.put("statusText", "已获取全部数据");
		} else {
			map.put("status", 500);
			map.put("statusText", "暂无数据");
		}
		return map;
	}
	@GetMapping("/exportparticipant")
	public Map<String, Object> exportParticipant(Integer id) {
		Map<String, Object> map = new HashMap<String, Object>();
		MatchInfo matchinfo = matchInfoService.getMatchById(id);
		List<TeamInfo> allTeamInfo = tfService.getTeamInfoByCompeid(id);
		List<Participant> allParticipant = new ArrayList<Participant>();
		if (allTeamInfo != null) {
			for (int i = 0;i < allTeamInfo.size();i++) {
				allParticipant.add(ps.getParticipantPstunum(allTeamInfo.get(i).getStunum()));
			}
		}
		List<String> allField = new ArrayList<String>();
		allField.add("编号");
		allField.add("姓名");
		allField.add("学号");
//		allField.add("班级年级");
//		allField.add("宿舍号");
		allField.add("校区");
//		allField.add("籍贯");
		allField.add("身份证号");
//		allField.add("QQ号");
//		allField.add("联系方式");
//		allField.add("邮箱");
//		allField.add("有无参赛经历");
		allField.add("学院");
		Document document = tableToWordUtil.toWord(allField, allParticipant, prConfig.getUploadPath() + "/report/" +  matchinfo.getMtitle() + "参赛人员信息" + ".docx", "所有参赛者信息");
		if (document != null) {
			map.put("documentpath", "static/report/" + matchinfo.getMtitle() + "参赛人员信息" + ".docx");
			map.put("status", 200);
			map.put("statusText", "成功导出");
		} else {
			map.put("status", 500);
			map.put("statusText", "导出失败");
		}
		return map;
	}
	@GetMapping("/getmatchbyid")
	public Map<String, Object> getMatchById(Integer id){
		Map<String, Object> map = new HashMap<String, Object>();
		MatchInfo matchById = matchInfoService.getMatchById(id);
		int total = tfService.getCountOfPerMatch(id);
		List<TeamInfo> allTeam = tfService.getTeamInfoByCompeid(id);
		List<Participant> allPar = null;
		List<String> name = new ArrayList<String>();
		List<Integer> value = new ArrayList<Integer>();
		List<String> allProName = tfService.getAllPro(id);
		if (allTeam != null && allTeam.size() > 0) {
			allPar = new ArrayList<Participant>();
			for (int i = 0;i < allTeam.size();i++) {
				allPar.add(ps.getParticipantPstunum(allTeam.get(i).getStunum()));
			}
		}
		if (allPar != null && allPar.size() > 0) {
			analy(allPar, allProName, name, value);
		}
		if (matchById != null) {
			map.put("status", 200);
			map.put("allindexname", name);
			map.put("allindexvalue", value);
			map.put("totalnum", total);
			map.put("matchById", matchById);
			map.put("statusText", "已获取全部数据");
		} else {
			map.put("status", 500);
			map.put("statusText", "暂无数据");
		}
		return map;
	}
	private void analy(List<Participant> allPar, List<String> allProName, List<String> name, List<Integer> value){
		Map<String, Object> all = new HashMap<String, Object>();
		int total = 0;
		for (int j = 0;j < allProName.size();j++) {
			all.put(allProName.get(j), 0);
		}
		for (int i = 0;i < allPar.size();i++) {
			for (int j = 0;j < allProName.size();j++) {
				if (allPar.get(i).getPgrade().equals(allProName.get(j))) {
					int count = Integer.valueOf(String.valueOf(all.get(allProName.get(j)))) + 1;
					total += count;
					all.put(allProName.get(j), count);
				}
			}
		}
		Set<String> set = all.keySet();
		name.add("总人数");
		value.add(total);
		for (String str : set) {
			int count = Integer.valueOf(String.valueOf(all.get(str)));
			name.add(str);
			value.add(count);
		}
	}
}
