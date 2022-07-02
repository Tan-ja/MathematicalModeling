package cn.lanqiao.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import cn.lanqiao.entity.UserFeedback;
@Mapper
public interface UserFeedbackDao {
	// 添加用户反馈
	void addUserFeedback(UserFeedback userFeedback);
	// 删除用户反馈
	void deleteUserFeedback(Integer pid);
	// 修改用户反馈
	void updateUserFeedback(UserFeedback userFeedback);
	// 查找所有用户反馈
	List<UserFeedback> getAllUserFeedback();
	// 根据某个用户的反馈
	List<UserFeedback> getAllUserFeedbankByUloginid(String uloginid);
	// 分页查找用户的反馈
	List<UserFeedback> getAllUserFeedbankByPage(int currentPage, int pageSize);
	// 根据pid获取用户反馈
	UserFeedback getAllUserFeedbankPid(Integer pid);
}
