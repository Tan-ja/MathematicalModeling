package cn.lanqiao.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.lanqiao.dao.ThesisDao;
import cn.lanqiao.entity.Thesis;
import cn.lanqiao.service.ThesisService;
@Service
public class ThesisServiceImpl implements ThesisService {
	@Autowired
	private ThesisDao thesisDao;
	@Override
	public boolean addThesis(Thesis thesis) {
		// TODO Auto-generated method stub
		if (thesis != null) {
			thesisDao.addThesis(thesis);
			return true;
		}
		return false;
	}
	@Override
	public Thesis getThesisByTeamidAndMatchid(Integer teamid, Integer matchid) {
		// TODO Auto-generated method stub
		if (teamid != null && matchid != null) {
			return thesisDao.getThesisByTeamidAndMatchid(teamid, matchid);
		}
		return null;
	}
	@Override
	public boolean updateThesis(Thesis thesis) {
		// TODO Auto-generated method stub
		if (thesis != null) {
			thesisDao.updateThesis(thesis);
			return true;
		}
		return false;
	}

}
