package cn.lanqiao.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.lanqiao.dao.UserDao;
import cn.lanqiao.entity.User;
import cn.lanqiao.service.UserService;
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	@Override
	public User login(String uloginid, String upassword) {
		User user = null;
		// TODO Auto-generated method stub
		if (uloginid.equals("")|| uloginid == null){
			return user;
		}
		user = userDao.login(uloginid, upassword);
		return user;
	}
	@Override
	public User getUserByUserId(Integer userid) {
		// TODO Auto-generated method stub
		User user = null;
		if (userid != null) {
			user = userDao.getUserByUserId(userid);
		}
		return user;
	}
	@Override
	public boolean addUser(User newUser) {
		// TODO Auto-generated method stub
		if (newUser != null) {
			userDao.addUser(newUser);
			User user = userDao.getUserByName(newUser.getUloginid());
			if (user == null) {
				return false;
			}
			return true;
		}
		return false;
	}
	@Override
	public User getUserByName(String uloginid) {
		// TODO Auto-generated method stub
		if (uloginid != null) {
			User user = userDao.getUserByName(uloginid);
			return user;
		}
		return null;
	}
	@Override
	public boolean updateUserInfo(User user) {
		// TODO Auto-generated method stub
		if (user != null) {
			userDao.updateUserInfo(user);
			return true;
		}
		return false;
	}
	@Override
	public boolean updateUserIsOnline(Map<String, Object> map) {
		// TODO Auto-generated method stub
		if (map != null) {
			userDao.updateUserIsOnline(map);
			return true;
		}
		return false;
	}
	@Override
	public User getUserByUstunum(String ustunum) {
		// TODO Auto-generated method stub
		if(ustunum != null && !"".equals(ustunum)) {
			return userDao.getUserByUstunum(ustunum);
		}
		return null;
	}
	@Override
	public List<User> getAllUserByPage(int currentPage, int pageSize, String key) {
		// TODO Auto-generated method stub
		if (key != null) {
			return userDao.getAllUserByPage(currentPage, pageSize, key);
		}
		return null;
	}
	@Override
	public List<User> getAllUserByPageLimit(String key) {
		// TODO Auto-generated method stub
		if (key != null) {
			return userDao.getAllUserByPageLimit(key);
		}
		return null;
	}
	@Override
	public boolean updateUserUpassword(User user) {
		// TODO Auto-generated method stub
		if (user != null) {
			userDao.updateUserUpassword(user);
			return true;
		}
		return false;
	}
	@Override
	public List<String> allFieldName(String tableName, String dbName) {
		// TODO Auto-generated method stub
		if (tableName != null && dbName != null) {
			return userDao.allFieldName(tableName, dbName);
		}
		return null;
	}
	@Override
	public boolean deleteByUserid(Integer userid) {
		// TODO Auto-generated method stub
		if (userid != null) {
			userDao.deleteByUserid(userid);
			return true;
		}
		return false;
	}
}
