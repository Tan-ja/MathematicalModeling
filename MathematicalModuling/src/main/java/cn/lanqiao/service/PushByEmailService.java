package cn.lanqiao.service;

import java.util.List;

import cn.lanqiao.entity.PushByEmail;

public interface PushByEmailService {
	boolean addPushByEmail(PushByEmail pushByEmail);
	// 根据用户id删除某条记录
	boolean deleteByUserId(Integer userid);
	// 根据编号id删除某条记录
	boolean deleeById(Integer id);
	// 根据用户id修改用户信息
	boolean updatePushByEmail(PushByEmail pushByEmail);
	// 查找所有记录
	List<PushByEmail> getAllPushByEmail();
	// 根据用户id查找某条记录
	PushByEmail getPushByEmailByUserid(Integer userid);
	// 根据编号查找某条记录
	PushByEmail getPushByEmailById(Integer id);
}
