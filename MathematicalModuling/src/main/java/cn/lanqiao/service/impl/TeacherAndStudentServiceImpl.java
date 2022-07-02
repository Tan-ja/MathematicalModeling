package cn.lanqiao.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.lanqiao.dao.TeacherAndStudentDao;
import cn.lanqiao.entity.FamousStudent;
import cn.lanqiao.entity.Student;
import cn.lanqiao.entity.Teacher;
import cn.lanqiao.entity.User;
import cn.lanqiao.service.TeacherAndStudentService;
@Service
public class TeacherAndStudentServiceImpl implements TeacherAndStudentService{
	@Autowired
	private TeacherAndStudentDao teacherAndStudentDao;
	@Override
	public List<Teacher> getAllTeacherInfo() {
		// TODO Auto-generated method stub
		List<Teacher> teachers = teacherAndStudentDao.getAllTeacherInfo();
		return teachers;
	}
	@Override
	public Teacher getTeacherInfoByUid(Integer uid) {
		// TODO Auto-generated method stub
		Teacher teacher = null;
		if ("".equals(uid)) {
			return teacher;
		}
		teacher = teacherAndStudentDao.getTeacherInfoByUid(uid);
		return teacher;
	}
	@Override
	public List<Student> getAllStudentInfo() {
		// TODO Auto-generated method stub
		List<Student> students = teacherAndStudentDao.getAllStudentInfo();
		return students;
	}
	@Override
	public Student getStudentInfoBySid(Integer sid) {
		// TODO Auto-generated method stub
		Student student = null;
		if ("".equals(sid)) {
			return student;
		}
		student = teacherAndStudentDao.getStudentInfoBySid(sid);
		return student;
	}
	@Override
	public List<FamousStudent> getFamousStudent() {
		// TODO Auto-generated method stub
		List<FamousStudent> fs = teacherAndStudentDao.getFamousStudent();
		return fs;
	}
	@Override
	public void insertTeacherInfo(String uname, String udesc) {
		// TODO Auto-generated method stub
		if (uname != null && udesc != null) {
			teacherAndStudentDao.insertTeacherInfo(uname, udesc);
		}
	}
	@Override
	public List<Student> getAllStudentInfoWithLimit(int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return teacherAndStudentDao.getAllStudentInfoWithLimit(currentPage, pageSize);
	}
	@Override
	public List<Teacher> getAllTeacherInfoWithLimit(int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return teacherAndStudentDao.getAllTeacherInfoWithLimit(currentPage, pageSize);
	}
	@Override
	public boolean updateTeaInfo(Teacher teacher) {
		// TODO Auto-generated method stub
		if (teacher != null) {
			teacherAndStudentDao.updateTeaInfo(teacher);
			return true;
		}
		return false;
	}
	@Override
	public boolean addTeacherInfo(Teacher teacher) {
		// TODO Auto-generated method stub
		if (teacher != null) {
			teacherAndStudentDao.addTeacherInfo(teacher);
			return true;
		}
		return false;
	}
	@Override
	public boolean updateStuInfo(Student student) {
		// TODO Auto-generated method stub
		if (student != null) {
			teacherAndStudentDao.updateStuInfo(student);
			return true;
		}
		return false;
	}
	@Override
	public boolean addStudentInfo(Student student) {
		// TODO Auto-generated method stub
		if (student != null) {
			teacherAndStudentDao.addStudentInfo(student);
			return true;
		}
		return false;
	}
	@Override
	public boolean deleteTeaInfo(Integer uid) {
		// TODO Auto-generated method stub
		if (uid != null) {
			teacherAndStudentDao.deleteTeaInfo(uid);
			return true;
		}
		return false;
	}
	@Override
	public boolean deleteStuInfo(Integer sid) {
		// TODO Auto-generated method stub
		if (sid != null) {
			teacherAndStudentDao.deleteStuInfo(sid);
			return true;
		}
		return false;
	}
	@Override
	public boolean updateTeacherCommentNum(Integer uid) {
		// TODO Auto-generated method stub
		if (uid != null) {
			teacherAndStudentDao.updateTeacherCommentNum(uid);
			return true;
		}
		return false;
	}
	@Override
	public boolean updateStudentCommentNum(Integer sid) {
		// TODO Auto-generated method stub
		if (sid != null) {
			teacherAndStudentDao.updateStudentCommentNum(sid);
			return true;
		}
		return false;
	}
	@Override
	public boolean updateTeacherReaderNum(Integer uid) {
		// TODO Auto-generated method stub
		if (uid != null) {
			teacherAndStudentDao.updateTeacherReaderNum(uid);
			return true;
		}
		return false;
	}
	@Override
	public boolean updateStudentReaderNum(Integer sid) {
		// TODO Auto-generated method stub
		if (sid != null) {
			teacherAndStudentDao.updateStudentReaderNum(sid);
			return true;
		}
		return false;
	}
	@Override
	public boolean updateTeacherUthumbupAdd(Integer uid) {
		// TODO Auto-generated method stub
		if (uid != null) {
			teacherAndStudentDao.updateTeacherUthumbupAdd(uid);
			return true;
		}
		return false;
	}
	@Override
	public boolean updateTeacherUthumbupRe(Integer uid) {
		// TODO Auto-generated method stub
		if (uid != null) {
			teacherAndStudentDao.updateTeacherUthumbupRe(uid);
			return true;
		}
		return false;
	}
	@Override
	public boolean updateStudentUthumbupAdd(Integer sid) {
		// TODO Auto-generated method stub
		if (sid != null) {
			teacherAndStudentDao.updateStudentUthumbupAdd(sid);
			return true;
		}
		return false;
	}
	@Override
	public boolean updateStudentUthumbupRe(Integer sid) {
		// TODO Auto-generated method stub
		if (sid != null) {
			teacherAndStudentDao.updateStudentUthumbupRe(sid);
			return true;
		}
		return false;
	}
	@Override
	public List<Student> getAllStudentInfoWithLimitMore(int currentPage, int pageSize, String key) {
		// TODO Auto-generated method stub
		if (key != null) {
			return teacherAndStudentDao.getAllStudentInfoWithLimitMore(currentPage, pageSize, key);
		}
		return null;
	}
	@Override
	public List<Teacher> getAllTeacherInfoWithLimitMore(int currentPage, int pageSize, String key) {
		// TODO Auto-generated method stub
		if (key != null) {
			return teacherAndStudentDao.getAllTeacherInfoWithLimitMore(currentPage, pageSize, key);
		}
		return null;
	}
	@Override
	public List<Teacher> getAllTeacherInfoLimit(String key) {
		// TODO Auto-generated method stub
		if (key != null) {
			return teacherAndStudentDao.getAllTeacherInfoLimit(key);
		}
		return null;
	}
	@Override
	public List<Student> getAllStudentInfoLimit(String key) {
		// TODO Auto-generated method stub
		if (key != null) {
			return teacherAndStudentDao.getAllStudentInfoLimit(key);
		}
		return null;
	}
}
