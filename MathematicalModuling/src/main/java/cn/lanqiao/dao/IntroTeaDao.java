package cn.lanqiao.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import cn.lanqiao.entity.IntroTea;

@Mapper
public interface IntroTeaDao {
	// 根据教师uid获取教师详细信息
	List<IntroTea> getAllIntroTeaInfoByUid(Integer uid);
	// 根据教师的uid和教师的名称获取教师的详细信息
//	List<IntroTea> getAllIntroTeaInfoByUidAndName(Integer uid, String uname);
	// 修改教师的某条详细情况
	void updateIntroTeaInfo(IntroTea introTea);
	// 删除某条信息
	void deleteIntroTeaBy(IntroTea introTea);
	// 添加教师的详细信息
	void addIntroTea(IntroTea introTea);
	// 根据id删除教师详细信息
	void deleteIntroTeaById(Integer id);
	// 根据id获取教师的某条详细信息
	IntroTea getIntroTeaByid(Integer id);
}
