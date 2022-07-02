package cn.lanqiao.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import cn.lanqiao.entity.IntroStu;
@Mapper
public interface IntroStuDao {
	// 根据教师uid获取教师详细信息
	List<IntroStu> getAllIntroStuInfoByUid(Integer sid);
	// 根据教师的uid和教师的名称获取教师的详细信息
//	List<IntroStu> getAllIntroStuInfoByUidAndName(Integer sid, String sname);
	// 修改教师的某条详细情况
	void updateIntroStuInfo(IntroStu introStu);
	// 删除某条信息
	void deleteIntroStuBy(IntroStu introStu);
	// 添加教师的详细信息
	void addIntroStu(IntroStu introStu);
	// 根据id删除教师详细信息
	void deleteIntroStuById(Integer id);
	// 根据id获取教师的某条详细信息
	IntroStu getIntroStuByid(Integer id);
}
