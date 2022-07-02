package cn.lanqiao.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.lanqiao.entity.User;
import cn.lanqiao.entity.UserLogin;
@Mapper
public interface UserDao {
	// 老师或者学生登录
	public User login(String uloginid, String upassword);
	// 根据用户id查找某个用户的信息
	public User getUserByUserId(Integer userid);
	// 添加用户信息
	public void addUser(User newUser);
	// 根据用户姓名查找用户信息
	public User getUserByName(String uloginid);
	// 根据用户名修改密码
	@Update("update user set upassword=#{upassword} where uloginid=#{uloginid}")
	void updateUserUpassword(User user);
	// 用户修改个人信息
	void updateUserInfo(User user);
	// 修改用户是否在线
	void updateUserIsOnline(Map<String, Object> map);
	// 根据用户学号查找用户
	User getUserByUstunum(String ustunum);
	// 分页查询用户
	List<User> getAllUserByPage(int currentPage, int pageSize, String key);
	// 分页查询用户
	List<User> getAllUserByPageLimit(String key);
	@Select("select COLUMN_NAME from ${tableName}.COLUMNS where table_name = #{tableName} and table_schema = #{dbName}")
	List<String> allFieldName(String tableName, String dbName);
	// 根据用户编号删除用户
	@Delete("delete from user where userid=#{userid}")
	void deleteByUserid(Integer userid);
}
