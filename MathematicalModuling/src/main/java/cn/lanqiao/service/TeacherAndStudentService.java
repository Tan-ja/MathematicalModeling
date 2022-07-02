package cn.lanqiao.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import cn.lanqiao.entity.FamousStudent;
import cn.lanqiao.entity.Student;
import cn.lanqiao.entity.Teacher;
import cn.lanqiao.entity.User;
import cn.lanqiao.entity.UserLogin;

public interface TeacherAndStudentService {
	// 获取所有老师的信息
	public List<Teacher> getAllTeacherInfo();
	// 根据指导老师的uid查找指导老师的详细信息
	public Teacher getTeacherInfoByUid(Integer uid);
	// 获取所有学生的概略信息
	public List<Student> getAllStudentInfo();
	// 根据学生的sid查找某个学生的所有个人信息
	public Student getStudentInfoBySid(Integer sid);
	// 获取名人堂页面学生内容
	public List<FamousStudent> getFamousStudent();
	// 获取所有老师的信息
	public List<Teacher> getAllTeacherInfoLimit(String key);
	// 获取所有学生的信息
	public List<Student> getAllStudentInfoLimit(String key);
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
	boolean updateTeaInfo(Teacher teacher);
	// 添加教师信息
	boolean addTeacherInfo(Teacher teacher);
	// 修改学生的信息
	boolean updateStuInfo(Student student);
	// 添加学生信息
	boolean addStudentInfo(Student student);
	// 根据uid删除教师信息
	boolean deleteTeaInfo(Integer uid);
	// 根据sid删除学生信息
	boolean deleteStuInfo(Integer sid);
	// 修改教师的评论数
	boolean updateTeacherCommentNum(Integer uid);
	// 修改学生的评论数
	boolean updateStudentCommentNum(Integer sid);
	// 修改教师详细情况访问人数
	boolean updateTeacherReaderNum(Integer uid);
	// 修改教师详细情况访问人数
	boolean updateStudentReaderNum(Integer sid);
	// 添加教师的点赞人数
	boolean updateTeacherUthumbupAdd(Integer uid);
	// 减少教师的点赞人数
	boolean updateTeacherUthumbupRe(Integer uid);
	// 添加学生的点赞人数
	boolean updateStudentUthumbupAdd(Integer sid);
	// 减少学生的点赞人数
	boolean updateStudentUthumbupRe(Integer sid);
}
