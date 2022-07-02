package cn.lanqiao.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.lanqiao.dao.HistoryDao;
import cn.lanqiao.entity.History;
import cn.lanqiao.service.HistoryService;
@Service
public class HistoryServiceImpl implements HistoryService {
	@Autowired
	private HistoryDao historyDao;
	@Override
	public List<History> getAllHistory() {
		// TODO Auto-generated method stub
		return historyDao.getAllHistory();
	}

	@Override
	public boolean addHistory(History history) {
		// TODO Auto-generated method stub
		try {
			if (history != null) {
				historyDao.addHistory(history);
			}
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean deleteHistoryById(Integer id) {
		// TODO Auto-generated method stub
		try {
			if (id != null) {
				historyDao.deleteHistoryById(id);
			}
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public List<History> getHistoryWithLimit(History history) {
		// TODO Auto-generated method stub
		if (history != null) {
			historyDao.getHistoryWithLimit(history);
		}
		return null;
	}

	@Override
	public boolean modifyHistory(History history) {
		// TODO Auto-generated method stub
		try {
			if (history != null) {
				historyDao.modifyHistory(history);
			}
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
}
