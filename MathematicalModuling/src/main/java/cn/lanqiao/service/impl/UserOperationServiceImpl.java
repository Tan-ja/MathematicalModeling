package cn.lanqiao.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.lanqiao.dao.UserOperationDao;
import cn.lanqiao.entity.UserOperation;
import cn.lanqiao.service.UserOperationService;
@Service
public class UserOperationServiceImpl implements UserOperationService {
	@Autowired
	private UserOperationDao userOperationDao;
	@Override
	public void addUserOperation(UserOperation userOperation) {
		// TODO Auto-generated method stub
		if (userOperation != null) {
			userOperationDao.addUserOperation(userOperation);
		}
	}

	@Override
	public void deleteUserOperationById(Integer id) {
		// TODO Auto-generated method stub
		if (id != null && id > 0) {
			userOperationDao.deleteUserOperatinByUserId(id);
		}
	}

	@Override
	public void deleteUserOperatinByUserId(Integer userid) {
		// TODO Auto-generated method stub
		if (userid != null && userid > 0) {
			userOperationDao.deleteUserOperatinByUserId(userid);
		}
	}

	@Override
	public void updateUserOperation(UserOperation userOperation) {
		// TODO Auto-generated method stub
		if (userOperation != null) {
			userOperationDao.updateUserOperation(userOperation);
		}
	}

	@Override
	public List<UserOperation> getAllOperationByUserid(Integer userid) {
		// TODO Auto-generated method stub
		if (userid != null && userid > 0) {
			return userOperationDao.getAllOperationByUserid(userid);
		}
		return null;
	}

	@Override
	public boolean deleteUserOperationByUseridAndOperation(UserOperation userOperation) {
		// TODO Auto-generated method stub
		if (userOperation != null) {
			userOperationDao.deleteUserOperationByUseridAndOperation(userOperation);
			return true;
		}
		return false;
	}

	@Override
	public List<UserOperation> getAllOperationByUseridAndToid(Map<String, Object> map) {
		// TODO Auto-generated method stub
		if (map != null && map.size() > 0) {
			return userOperationDao.getAllOperationByUseridAndToid(map);
		}
		return null;
	}

	@Override
	public UserOperation checkUserOperationIsRepeat(UserOperation userOperation) {
		// TODO Auto-generated method stub
		if (userOperation != null) {
			return userOperationDao.checkUserOperationIsRepeat(userOperation);
		}
		return null;
	}
}
