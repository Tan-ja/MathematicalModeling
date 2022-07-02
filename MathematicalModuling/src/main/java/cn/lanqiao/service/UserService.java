package cn.lanqiao.service;

import java.util.List;
import java.util.Map;

import cn.lanqiao.entity.User;

public interface UserService {
	// 老师或者学生登录
	public User login(String uloginid, String upassword);
	// 根据用户id查找某个用户的信息
	public User getUserByUserId(Integer userid);
	// 添加用户信息
	public boolean addUser(User newUser);
	// 根据用户姓名查找用户信息
	public User getUserByName(String uloginid);
	// 用户修改个人信息
	boolean updateUserInfo(User user);
	// 根据用户名修改密码
	boolean updateUserUpassword(User user);
	// 修改用户是否在线
	boolean updateUserIsOnline(Map<String, Object> map);
	// 根据用户学号查找用户
	User getUserByUstunum(String ustunum);
	// 分页查询用户
	List<User> getAllUserByPage(int currentPage, int pageSize, String key);
	// 分页查询用户
	List<User> getAllUserByPageLimit(String key);
	List<String> allFieldName(String tableName, String dbName);
	// 根据用户编号删除用户
	boolean deleteByUserid(Integer userid);
}
