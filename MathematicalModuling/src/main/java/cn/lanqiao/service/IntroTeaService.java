package cn.lanqiao.service;

import java.util.List;

import cn.lanqiao.entity.IntroTea;

public interface IntroTeaService {
	// 根据教师uid获取教师详细信息
	List<IntroTea> getAllIntroTeaInfoByUid(Integer uid);
	// 根据教师的uid和教师的名称获取教师的详细信息
//	List<IntroTea> getAllIntroTeaInfoByUidAndName(Integer uid, String uname);
	// 修改教师的某条详细情况
	boolean updateIntroTeaInfo(IntroTea introTea);
	// 删除某条信息
	boolean deleteIntroTeaBy(IntroTea introTea);
	// 添加教师的详细信息
	boolean addIntroTea(IntroTea introTea);
	// 根据id删除教师详细信息
	boolean deleteIntroTeaById(Integer id);
	// 根据id获取教师的某条详细信息
	IntroTea getIntroTeaByid(Integer id);
}
