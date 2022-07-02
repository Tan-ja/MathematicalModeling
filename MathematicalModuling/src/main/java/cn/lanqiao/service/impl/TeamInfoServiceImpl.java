package cn.lanqiao.service.impl;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.lanqiao.dao.TeamInfoDao;
import cn.lanqiao.entity.TeamInfo;
import cn.lanqiao.service.TeamInfoService;
@Service
public class TeamInfoServiceImpl implements TeamInfoService {
	@Autowired
	private TeamInfoDao tfDao;
	@Override
	public boolean addTeamInfo(TeamInfo teaminfo) {
		// TODO Auto-generated method stub
		if (teaminfo != null) {
			tfDao.addTeamInfo(teaminfo);
			return true;
		}
		return false;
	}

	@Override
	public boolean deleteTeamInfoByCaptainId(Integer id) {
		// TODO Auto-generated method stub
		if (id != null && id > 0) {
			tfDao.deleteTeamInfoByCaptainId(id);
			return true;
		}
		return false;
	}

	@Override
	public boolean updateStunum(TeamInfo teaminfo) {
		// TODO Auto-generated method stub
		if (teaminfo != null) {
			tfDao.updateStunum(teaminfo);
			return true;
		}
		return false;
	}

	@Override
	public List<TeamInfo> getTeamInfoByCapid(Integer id) {
		// TODO Auto-generated method stub
		if (id != null && id > 0) {
			return tfDao.getTeamInfoByCapid(id);
		}
		return null;
	}

	@Override
	public List<TeamInfo> getTeamInfoByCompeid(Integer id) {
		// TODO Auto-generated method stub
		if (id != null && id > 0) {
			return tfDao.getTeamInfoByCompeid(id);
		}
		return null;
	}

	@Override
	public List<TeamInfo> getTeamInfoByPdate(Date date) {
		// TODO Auto-generated method stub
		if (date != null) {
			return tfDao.getTeamInfoByPdate(date);
		}
		return null;
	}

	@Override
	public List<TeamInfo> getTeamInfoByStunum(String stunum) {
		// TODO Auto-generated method stub
		if (stunum != null && !"".equals(stunum)) {
			return tfDao.getTeamInfoByStunum(stunum);
		}
		return null;
	}

	@Override
	public List<TeamInfo> getTeamInfoByPdateWhile(Date start, Date end) {
		// TODO Auto-generated method stub
		if (start != null && end != null) {
			return tfDao.getTeamInfoByPdateWhile(start, end);
		}
		return null;
	}

	@Override
	public List<TeamInfo> getTeamInfoByMatchIdAndCapId(Integer compeid, Integer capid) {
		// TODO Auto-generated method stub
		if (compeid != null && capid != null) {
			return tfDao.getTeamInfoByMatchIdAndCapId(compeid, capid);
		}
		return null;
	}

	@Override
	public boolean updateTeamCurrentStatusByMatchIdAndCapIdAndCurrentStatus(Integer matchid, Integer capid,
			int currentstatus) {
		// TODO Auto-generated method stub
		if (matchid != null && capid != null && currentstatus >= 0) {
			tfDao.updateTeamCurrentStatusByMatchIdAndCapIdAndCurrentStatus(matchid, capid, currentstatus);
			return true;
		}
		return false;
	}

	@Override
	public List<TeamInfo> allTeamInfoByAdmin(Map<String, Object> map) {
		// TODO Auto-generated method stub
		if (map != null) {
			return tfDao.allTeamInfoByAdmin(map);
		}
		return null;
	}

	@Override
	public int getCountOfPerMatch(Integer compeid) {
		// TODO Auto-generated method stub
		if (compeid != null) {
			return tfDao.getCountOfPerMatch(compeid);
		}
		return 0;
	}

	@Override
	public List<String> getAllPro(Integer compeid) {
		// TODO Auto-generated method stub
		if (compeid != null) {
			return tfDao.getAllPro(compeid);
		}
		return null;
	}

	@Override
	public TeamInfo checkUserRepeat(String stunum, Integer compeid) {
		// TODO Auto-generated method stub
		if (stunum != null && compeid != null) {
			return tfDao.checkUserRepeat(stunum, compeid);
		}
		return null;
	}
}
