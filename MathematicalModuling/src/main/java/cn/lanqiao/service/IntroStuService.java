
package cn.lanqiao.service;

import java.util.List;

import cn.lanqiao.entity.IntroStu;

public interface IntroStuService {
	// 根据教师uid获取教师详细信息
	List<IntroStu> getAllIntroStuInfoByUid(Integer sid);
	// 根据教师的uid和教师的名称获取教师的详细信息
//	List<IntroStu> getAllIntroStuInfoByUidAndName(Integer sid, String sname);
	// 修改教师的某条详细情况
	boolean updateIntroStuInfo(IntroStu introStu);
	// 删除某条信息
	boolean deleteIntroStuBy(IntroStu introStu);
	// 添加教师的详细信息
	boolean addIntroStu(IntroStu introStu);
	// 根据id删除教师详细信息
	boolean deleteIntroStuById(Integer id);
	// 根据id获取教师的某条详细信息
	IntroStu getIntroStuByid(Integer id);
}
