package cn.lanqiao.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

import cn.lanqiao.entity.UserLogin;

@Mapper
public interface UserLoginDao {
	// 修改用户登录密码
	@Update("update userlogin set upassword=#{upassword} where uloginid=#{uloginid}")
	void updateUserLoginid(UserLogin userLoginid);
}
