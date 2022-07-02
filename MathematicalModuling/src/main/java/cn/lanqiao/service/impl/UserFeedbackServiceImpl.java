package cn.lanqiao.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.lanqiao.dao.UserFeedbackDao;
import cn.lanqiao.entity.UserFeedback;
import cn.lanqiao.service.UserFeedbackService;
@Service
public class UserFeedbackServiceImpl implements UserFeedbackService{
	@Autowired
	private UserFeedbackDao userFeedbackDao;
	@Override
	public boolean addUserFeedback(UserFeedback userFeedback) {
		// TODO Auto-generated method stub
		try {
			if (userFeedback != null) {
				userFeedbackDao.addUserFeedback(userFeedback);
				return true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean deleteUserFeedback(Integer pid) {
		// TODO Auto-generated method stub
		try {
			if (pid != null) {
				userFeedbackDao.deleteUserFeedback(pid);
				return true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean updateUserFeedback(UserFeedback userFeedback) {
		// TODO Auto-generated method stub
		try {
			if (userFeedback != null) {
				userFeedbackDao.updateUserFeedback(userFeedback);
				return true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public List<UserFeedback> getAllUserFeedback() {
		// TODO Auto-generated method stub
		return userFeedbackDao.getAllUserFeedback();
	}

	@Override
	public List<UserFeedback> getAllUserFeedbankByUloginid(String uloginid) {
		// TODO Auto-generated method stub
		try {
			if (!"".equals(uloginid) && uloginid != null) {
				return userFeedbackDao.getAllUserFeedbankByUloginid(uloginid);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<UserFeedback> getAllUserFeedbankByPage(int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		try {
			return userFeedbackDao.getAllUserFeedbankByPage(currentPage, pageSize);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public UserFeedback getAllUserFeedbankPid(Integer pid) {
		// TODO Auto-generated method stub
		try {
			if (pid != null) {
				return userFeedbackDao.getAllUserFeedbankPid(pid);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
