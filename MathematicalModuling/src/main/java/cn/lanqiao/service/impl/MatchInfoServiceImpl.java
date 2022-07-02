package cn.lanqiao.service.impl;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.lanqiao.dao.MatchInfoDao;
import cn.lanqiao.entity.MatchInfo;
import cn.lanqiao.service.MatchInfoService;
@Service
public class MatchInfoServiceImpl implements MatchInfoService {
	@Autowired
	private MatchInfoDao matchInfoDao;
	@Override
	public boolean addNewMatch(MatchInfo matchInfo) {
		// TODO Auto-generated method stub
		if (matchInfo != null) {
			matchInfoDao.addNewMatch(matchInfo);
			return true;
		}
		return false;
	}

	@Override
	public boolean deleteOldMatch(Integer id) {
		// TODO Auto-generated method stub
		if (id != null && id > 0) {
			matchInfoDao.deleteOldMatch(id);
			return true;
		}
		return false;
	}

	@Override
	public boolean updateMatch(MatchInfo matchInfo) {
		// TODO Auto-generated method stub
		if (matchInfo != null) {
			matchInfoDao.updateMatch(matchInfo);
			return true;
		}
		return false;
	}

	@Override
	public List<MatchInfo> getAllMatch(String mtitle) {
		// TODO Auto-generated method stub
		return matchInfoDao.getAllMatch(mtitle);
	}

	@Override
	public MatchInfo getMatchById(Integer id) {
		// TODO Auto-generated method stub
		if (id != null) {
			return matchInfoDao.getMatchById(id);
		}
		return null;
	}

	@Override
	public List<MatchInfo> getAllMatchByMdate(Date mdate) {
		// TODO Auto-generated method stub
		if (mdate != null) {
			return matchInfoDao.getAllMatchByMdate(mdate);
		}
		return null;
	}

	@Override
	public List<MatchInfo> getAllMatchByPage(int currentPage, int pageSize, String mtitle) {
		// TODO Auto-generated method stub
		if (currentPage >= 0 && pageSize >= 0) {
			return matchInfoDao.getAllMatchByPage(currentPage, pageSize, mtitle);
		}
		return null;
	}

	@Override
	public List<MatchInfo> getAllMatchByPageAndMdatge(Map<String, Object> map) {
		// TODO Auto-generated method stub
		if (map != null && map.size() > 0) {
			return matchInfoDao.getAllMatchByPageAndMdatge(map);
		}
		return null;
	}
}
