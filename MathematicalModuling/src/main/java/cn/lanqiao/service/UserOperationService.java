package cn.lanqiao.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import cn.lanqiao.entity.UserOperation;

public interface UserOperationService {
	// 添加用户操作
	void addUserOperation(UserOperation userOperation);
	// 删除某条用户操作
	void deleteUserOperationById(Integer id);
	// 根据用户id删除用户的某些操作
	void deleteUserOperatinByUserId(Integer userid);
	// 修改某个用户的操作
	void updateUserOperation(UserOperation userOperation);
	// 根据id查找用户的操作
	List<UserOperation> getAllOperationByUserid(Integer userid);
	// 根据id查找用户的操作
	List<UserOperation> getAllOperationByUseridAndToid(Map<String, Object> map);
	// 根据userid和具体操作删除某个用户的某个操作
	boolean deleteUserOperationByUseridAndOperation(UserOperation userOperation);
	// 检查用户操作是否重复
	UserOperation checkUserOperationIsRepeat(UserOperation userOperation);
}
