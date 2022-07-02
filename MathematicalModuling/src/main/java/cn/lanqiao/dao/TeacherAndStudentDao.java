package cn.lanqiao.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.fasterxml.jackson.core.sym.Name;

import cn.lanqiao.entity.AcademicDynamic;
import cn.lanqiao.entity.FamousStudent;
import cn.lanqiao.entity.Student;
import cn.lanqiao.entity.Teacher;
import cn.lanqiao.entity.User;
import cn.lanqiao.entity.UserLogin;


@Mapper
public interface TeacherAndStudentDao {
	// 获取所有老师的信息
	public List<Teacher> getAllTeacherInfo();
	// 根据指导老师的uid查找指导老师的详细信息
	public Teacher getTeacherInfoByUid(Integer uid);
	// 获取所有学生的信息
	public List<Student> getAllStudentInfo();
	// 获取所有老师的信息
	public List<Teacher> getAllTeacherInfoLimit(String key);
	// 获取所有学生的信息
	public List<Student> getAllStudentInfoLimit(String key);
	// 根据学生的sid查找某个学生的所有个人信息
	public Student getStudentInfoBySid(Integer sid);
	// 获取名人堂页面学生内容
	public List<FamousStudent> getFamousStudent();
	// 给指导老师注入详细信息
	public void insertTeacherInfo(String uname, String udesc);
	// 获取指定数量的学生的信息
	public List<Student> getAllStudentInfoWithLimit(int currentPage, int pageSize);
	// 获取指定数量的学生的信息
	public List<Teacher> getAllTeacherInfoWithLimit(int currentPage, int pageSize);
	// 获取指定数量的学生的信息
	public List<Student> getAllStudentInfoWithLimitMore(int currentPage, int pageSize, String key);
	// 获取指定数量的学生的信息
	public List<Teacher> getAllTeacherInfoWithLimitMore(int currentPage, int pageSize, String key);
	// 修改教师的信息
	void updateTeaInfo(Teacher teacher);
	// 添加教师信息
	void addTeacherInfo(Teacher teacher);
	// 修改学生的信息
	void updateStuInfo(Student student);
	// 添加学生信息
	void addStudentInfo(Student student);
	// 根据uid删除教师信息
	void deleteTeaInfo(Integer uid);
	// 根据sid删除学生信息
	void deleteStuInfo(Integer sid);
	// 修改教师的评论数
	void updateTeacherCommentNum(Integer uid);
	// 修改学生的评论数
	void updateStudentCommentNum(Integer sid);
	// 修改教师详细情况访问人数
	void updateTeacherReaderNum(Integer uid);
	// 修改教师详细情况访问人数
	void updateStudentReaderNum(Integer sid);
	// 添加教师的点赞人数
	void updateTeacherUthumbupAdd(Integer uid);
	// 减少教师的点赞人数
	void updateTeacherUthumbupRe(Integer uid);
	// 添加学生的点赞人数
	void updateStudentUthumbupAdd(Integer sid);
	// 减少学生的点赞人数
	void updateStudentUthumbupRe(Integer sid);
}
