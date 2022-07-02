package cn.lanqiao.service;

import java.util.List;

import cn.lanqiao.entity.UserFeedback;

public interface UserFeedbackService {
	// 添加用户反馈
	boolean addUserFeedback(UserFeedback userFeedback);
	// 删除用户反馈
	boolean deleteUserFeedback(Integer pid);
	// 修改用户反馈
	boolean updateUserFeedback(UserFeedback userFeedback);
	// 查找所有用户反馈
	List<UserFeedback> getAllUserFeedback();
	// 根据某个用户的反馈
	List<UserFeedback> getAllUserFeedbankByUloginid(String uloginid);
	// 分页查找用户的反馈
	List<UserFeedback> getAllUserFeedbankByPage(int currentPage, int pageSize);
	// 根据pid获取用户反馈
	UserFeedback getAllUserFeedbankPid(Integer pid);
}
