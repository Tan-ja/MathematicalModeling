package cn.lanqiao.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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

import cn.lanqiao.entity.MatchInfo;
import cn.lanqiao.entity.Participant;
import cn.lanqiao.entity.TeamInfo;
import cn.lanqiao.entity.TeamInfoExtend;
import cn.lanqiao.entity.User;
import cn.lanqiao.service.MatchInfoService;
import cn.lanqiao.service.ParticipantService;
import cn.lanqiao.service.TeamInfoService;
import cn.lanqiao.service.UserService;

@CrossOrigin // 跨域
@RequestMapping("/api/teaminfo") // 窄化路径
@RestController // 将该类中的所有的返回数据转换成JSON格式
public class TeamInfoController {
	@Autowired
	private TeamInfoService tis;
	@Autowired
	private MatchInfoService matchInfoService;
	@Autowired
	private ParticipantService participantService;
	@Autowired
	private UserService userService;
	@PostMapping("/addteaminfo")
	public Map<String, Object> addTeaminfo(@RequestBody TeamInfo teaminfo){
		Map<String, Object> map = new HashMap<String, Object>();
		User user = userService.getUserByUstunum(teaminfo.getStunum());
		if (teaminfo.getMrole() == 0 && user == null) {
			map.put("status", 300);
			map.put("statusText", "当前队长没有账号,请先注册账号");
			return map;
		}
		boolean isSuccess = tis.addTeamInfo(teaminfo);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "添加成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "添加失败");
		}
		return map;
	}
	@PostMapping("/updateteaminfo")
	public Map<String, Object> updateTeaminfo(@RequestBody TeamInfo teaminfo){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = tis.updateStunum(teaminfo);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "修改成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "修改失败");
		}
		return map;
	}
	@GetMapping("/deleteteaminfo")
	public Map<String, Object> deleteTeaminfo(Integer id){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = tis.deleteTeamInfoByCaptainId(id);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "删除成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "删除失败");
		}
		return map;
	}
	@GetMapping("/getteaminfobycapid")
	public Map<String, Object> getTeamInfoByCapid(Integer id){
		Map<String, Object> map = new HashMap<String, Object>();
		List<TeamInfo> allTeamInfoByCapid = tis.getTeamInfoByCapid(id);
		List<Object[]> allTeamInfo = new ArrayList<Object[]>();
		for (int i = 0;i < allTeamInfoByCapid.size();i++) {
			Integer matchid = allTeamInfoByCapid.get(i).getCompeid(); // 赛事编号
			Integer currentStatus = allTeamInfoByCapid.get(i).getCurrentstatus(); // 当前状态
			String mtitle = matchInfoService.getMatchById(allTeamInfoByCapid.get(i).getCompeid()).getMtitle();
			Object[] obj = new Object[4];
			obj[0] = matchid;
			obj[1] = currentStatus;
			obj[2] = mtitle;
			obj[3] = allTeamInfoByCapid.get(i).getPdate();
			allTeamInfo.add(obj);
		}
		if (allTeamInfo.size() > 0) {
			map.put("status", 200);
			map.put("allteaminfo", allTeamInfo);
			map.put("statusText", "成功获取所有数据");
		} else {
			map.put("status", 500);
			map.put("statusText", "暂无数据");
		}
		return map;
	}
	@GetMapping("/getteaminfobycompeid")
	public Map<String, Object> getTeamInfoByCompeid(Integer id){
		Map<String, Object> map = new HashMap<String, Object>();
		List<TeamInfo> allTeamInfoByCapid = tis.getTeamInfoByCompeid(id);
		if (allTeamInfoByCapid != null) {
			map.put("status", 200);
			map.put("allteaminfo", allTeamInfoByCapid);
			map.put("statusText", "成功获取所有数据");
		} else {
			map.put("status", 500);
			map.put("statusText", "服务器异常");
		}
		return map;
	}
	@GetMapping("/getteaminfobypdate")
	public Map<String, Object> getTeamInfoByPdate(java.sql.Date date){
		Map<String, Object> map = new HashMap<String, Object>();
		List<TeamInfo> allTeamInfoByCapid = tis.getTeamInfoByPdate(date);
		if (allTeamInfoByCapid != null) {
			map.put("status", 200);
			map.put("allteaminfo", allTeamInfoByCapid);
			map.put("statusText", "成功获取所有数据");
		} else {
			map.put("status", 500);
			map.put("statusText", "服务器异常");
		}
		return map;
	}
	@GetMapping("/getteaminfobystunum")
	public Map<String, Object> getTeamInfoByStunum(String stunum){
		Map<String, Object> map = new HashMap<String, Object>();
		List<TeamInfo> allTeamInfoByCapid = tis.getTeamInfoByStunum(stunum);
		if (allTeamInfoByCapid != null) {
			map.put("status", 200);
			map.put("allteaminfo", allTeamInfoByCapid);
			map.put("statusText", "成功获取所有数据");
		} else {
			map.put("status", 500);
			map.put("statusText", "服务器异常");
		}
		return map;
	}
	@GetMapping("/getteaminfowhile")
	public Map<String, Object> getTeamInfoByPdateWhile(java.sql.Date start, java.sql.Date end){
		Map<String, Object> map = new HashMap<String, Object>();
		List<TeamInfo> allTeamInfoByCapid = tis.getTeamInfoByPdateWhile(start, end);
		if (allTeamInfoByCapid != null) {
			map.put("status", 200);
			map.put("allteaminfo", allTeamInfoByCapid);
			map.put("statusText", "成功获取所有数据");
		} else {
			map.put("status", 500);
			map.put("statusText", "服务器异常");
		}
		return map;
	}
	@GetMapping("/getteaminfodesc")
	public Map<String, Object> getTeamInfoByPdateDesc(Integer matchid, Integer userid){
		Map<String, Object> map = new HashMap<String, Object>();
		List<TeamInfo> allTeamInfoByCapid = tis.getTeamInfoByMatchIdAndCapId(matchid, userid);
		MatchInfo matchInfo = matchInfoService.getMatchById(matchid);
		List<Object[]> allParticipant = new ArrayList<Object[]>();
		if (allTeamInfoByCapid != null) {
			for (int i = 0;i < allTeamInfoByCapid.size();i++) {
				Participant participant = participantService.getParticipantPstunum(allTeamInfoByCapid.get(i).getStunum());
				Object[] obj = new Object[3];
				obj[0] = participant;
				obj[1] =  allTeamInfoByCapid.get(i).getMrole();
				obj[2] = allTeamInfoByCapid.get(i).getCurrentstatus();
				allParticipant.add(obj);
			}
		}
		if (matchInfo != null) {
			map.put("status", 200);
			map.put("matchInfo", matchInfo);
			map.put("allParticipant", allParticipant);
			map.put("statusText", "成功获取所有数据");
		} else {
			map.put("status", 500);
			map.put("statusText", "暂无数据");
		}
		return map;
	}
	@GetMapping("/updatecurrentstatus")
	public Map<String, Object> updateTeamCurrentStatus(Integer matchid, Integer userid, int currentStatus){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = tis.updateTeamCurrentStatusByMatchIdAndCapIdAndCurrentStatus(matchid, userid, currentStatus);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "状态更新成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "状态更新失败");
		}
		return map;
	}
	@GetMapping("/getteaminfobysome")
	public Map<String, Object> getTeamInfoBySome(String str, String start, String end, String other){
		Log l = new Log4jImpl("ok");
		List<TeamInfoExtend> tiExtend = null;
		Map<String, Object> map = new HashMap<String, Object>();
		tiExtend = getTeamInfoExtendNotLimit(str, start, end, other);
		if (tiExtend != null) {
			map.put("status", 200);
			map.put("teaminfoextend", tiExtend);
			map.put("statusText", "成功获取所有数据");
		} else {
			map.put("status", 500);
			map.put("statusText", "暂无数据");
		}
		return map;
	}
	private List<TeamInfoExtend> getTeamInfoExtendNotLimit(String str, String start, String end, String other){
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		java.sql.Date startDate = null;
		java.sql.Date endDate = null;
		List<Integer> allStatus = null;
		Map<String, Object> allParam = new HashMap<String, Object>();
		List<MatchInfo> allMatch = new ArrayList<MatchInfo>();
		Date date = null;
		try {
			if (!"".equals(start) && !"".equals(end) && start != null && end != null) {
				date = format.parse(start);
				startDate = new java.sql.Date(date.getTime());
				date = format.parse(end);
				endDate = new java.sql.Date(date.getTime());
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (!"".equals(str)) {
			allStatus = new ArrayList<Integer>();
			if (str.contains("a")) {
				for (int i = 0;i <= 7;i++) {
					allStatus.add(i);
				}
			} else {
				if (str.contains(":")) {
					String[] allStatusStr = str.split(":");
					for (int i = 0;i < allStatusStr.length;i++) {
						allStatus.add(Integer.valueOf(allStatusStr[i]));
					}
				} else {
					allStatus.add(Integer.valueOf(str));
				}
			}
			allParam.put("list", allStatus);
		} else {
			allParam.put("list", null);
		}
		allParam.put("start", startDate);
		allParam.put("end", endDate);
		allParam.put("other", other);
		List<TeamInfo> allTeamInfo = tis.allTeamInfoByAdmin(allParam);
		List<TeamInfoExtend> tiExtend = null;
		if (allTeamInfo != null) {
			tiExtend = new ArrayList<TeamInfoExtend>();
			for (int i  = 0;i < allTeamInfo.size();i++) {
				TeamInfo middle = allTeamInfo.get(i);
				TeamInfoExtend teamInfoExtend = new TeamInfoExtend();
				teamInfoExtend.setPdate(middle.getPdate());
				teamInfoExtend.setCapstunum(middle.getStunum());
				teamInfoExtend.setCurrentstatus(middle.getCurrentstatus());
				teamInfoExtend.setCapid(middle.getCapid());
				teamInfoExtend.setMtitle(matchInfoService.getMatchById(allTeamInfo.get(i).getCompeid()).getMtitle());
				teamInfoExtend.setCapname(participantService.getParticipantPstunum(middle.getStunum()).getPname());
				teamInfoExtend.setCompeid(matchInfoService.getMatchById(allTeamInfo.get(i).getCompeid()).getId());
				allMatch.add(matchInfoService.getMatchById(allTeamInfo.get(i).getCompeid()));
				List<TeamInfo> team = tis.getTeamInfoByMatchIdAndCapId(allTeamInfo.get(i).getCompeid(), allTeamInfo.get(i).getCapid());
				if (team != null) {
					if (team.size() > 0) {
						teamInfoExtend.setTeamsize(0);
					} else {
						teamInfoExtend.setTeamsize(1);
					}
					List<Participant> allP = new ArrayList<Participant>();
					for (int j = 0;j < team.size();j++) {
						TeamInfo t = team.get(j);
						Participant p = participantService.getParticipantPstunum(t.getStunum());
						allP.add(p);
					}
					teamInfoExtend.setAllparticipant(allP);
				}
				tiExtend.add(teamInfoExtend);
			}
		}
		return tiExtend;
	}
	// 检查用户是否重复报名参赛
	@GetMapping("/checkrepeatpar")
	public Map<String, Object> checkRepeatParticipant(String stunum, Integer compeid){
		Map<String, Object> map = new HashMap<String, Object>();
		TeamInfo teamInfo = tis.checkUserRepeat(stunum, compeid);
		if (teamInfo == null) {
			map.put("status", 200);
			map.put("statusText", "可报名");
		} else {
			map.put("status", 500);
			map.put("statusText", "重复报名");
		}
		return map;
	}
}
