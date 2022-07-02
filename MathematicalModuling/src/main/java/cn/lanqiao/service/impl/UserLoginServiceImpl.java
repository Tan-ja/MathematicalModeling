package cn.lanqiao.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.lanqiao.dao.UserLoginDao;
import cn.lanqiao.entity.UserLogin;
import cn.lanqiao.service.UserLoginService;
@Service
public class UserLoginServiceImpl implements UserLoginService {
	@Autowired
	private UserLoginDao ulDao;
	@Override
	public boolean updateUserLoginid(UserLogin userLoginid) {
		// TODO Auto-generated method stub
		if (userLoginid != null) {
			ulDao.updateUserLoginid(userLoginid);
			return true;
		}
		return false;
	}

}
