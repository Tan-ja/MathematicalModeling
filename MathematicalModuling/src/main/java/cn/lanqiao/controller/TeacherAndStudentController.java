package cn.lanqiao.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.swing.Spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import cn.lanqiao.entity.AllOptionDesc;
import cn.lanqiao.entity.FamousStudent;
import cn.lanqiao.entity.IntroStu;
import cn.lanqiao.entity.IntroTea;
import cn.lanqiao.entity.Page;
import cn.lanqiao.entity.Student;
import cn.lanqiao.entity.Teacher;
import cn.lanqiao.entity.UserOperation;
import cn.lanqiao.service.IntroStuService;
import cn.lanqiao.service.IntroTeaService;
import cn.lanqiao.service.TeacherAndStudentService;
import cn.lanqiao.service.UserOperationService;
@CrossOrigin
@RequestMapping("/api/user")
@RestController
public class TeacherAndStudentController {
	@Autowired
	private TeacherAndStudentService teaAndStuService;
	@Autowired
	private IntroTeaService introTeaService;
	@Autowired
	private IntroStuService introStuService;
	@Autowired
	private UserOperationService userOperationService;
	@GetMapping("/alltea")
	public Map<String, Object> getAllTeacherInfo(int currentPage, int pageSize){
		Map<String, Object> map = new HashMap<String, Object>();
		int pageCount = 0;
		Page<Teacher> page = new Page<Teacher>();
		List<Teacher> teachers = teaAndStuService.getAllTeacherInfo();
		if (teachers != null && teachers.size() > 0) {
			page.setCurrentPage(currentPage);
			page.setPageSize(pageSize);
			page.setTotal(teachers.size());
			pageCount = teachers.size() % pageSize == 0?(teachers.size() / pageSize) : (teachers.size() / pageSize + 1);
			teachers = teaAndStuService.getAllTeacherInfoWithLimit(currentPage, pageSize);
			page.setList(teachers);
			page.setPageCount(pageCount);
			map.put("teachers", page);
			map.put("status", 200);
			map.put("statusText", "获取成功");
		} else {
			map.put("status", 400);
			map.put("statusText", "没有相关信息");
		}
		return map;
	}
	@GetMapping("/alltealimit")
	public Map<String, Object> getAllTeacherInfoLimit(int currentPage, int pageSize, String key){
		Map<String, Object> map = new HashMap<String, Object>();
		int pageCount = 0;
		Page<Teacher> page = new Page<Teacher>();
		List<Teacher> teachers = teaAndStuService.getAllTeacherInfoLimit(key);
		if (teachers != null && teachers.size() > 0) {
			page.setCurrentPage(currentPage);
			page.setPageSize(pageSize);
			page.setTotal(teachers.size());
			pageCount = teachers.size() % pageSize == 0?(teachers.size() / pageSize) : (teachers.size() / pageSize + 1);
			teachers = teaAndStuService.getAllTeacherInfoWithLimitMore(currentPage, pageSize, key);
			page.setList(teachers);
			page.setPageCount(pageCount);
			map.put("teachers", page);
			map.put("status", 200);
			map.put("statusText", "获取成功");
		} else {
			map.put("status", 400);
			map.put("statusText", "没有相关信息");
		}
		return map;
	}
	// 获取所有学生的信息
	@GetMapping("/allstu")
	public Map<String, Object> getAllStudentInfo(int currentPage, int pageSize){
		Map<String, Object> map = new HashMap<String, Object>();
		int pageCount = 0;
		Page<Student> page = new Page<Student>();
		List<Student> students = teaAndStuService.getAllStudentInfo();
		if (students != null && students.size() > 0) {
			page.setCurrentPage(currentPage);
			page.setPageSize(pageSize);
			page.setTotal(students.size());
			pageCount = students.size() % pageSize == 0?(students.size() / pageSize) : (students.size() / pageSize + 1);
			students = teaAndStuService.getAllStudentInfoWithLimit(currentPage, pageSize);
			page.setList(students);
			page.setPageCount(pageCount);
			map.put("students", page);
			map.put("status", 200);
			map.put("statusText", "获取成功");
		} else {
			map.put("status", 400);
			map.put("statusText", "没有相关信息");
		}
		return map;
	}
	// 获取所有学生的信息
	@GetMapping("/allstulimit")
	public Map<String, Object> getAllStudentInfoLimit(int currentPage, int pageSize, String key){
		Map<String, Object> map = new HashMap<String, Object>();
		int pageCount = 0;
		Page<Student> page = new Page<Student>();
		List<Student> students = teaAndStuService.getAllStudentInfoLimit(key);
		if (students != null && students.size() > 0) {
			page.setCurrentPage(currentPage);
			page.setPageSize(pageSize);
			page.setTotal(students.size());
			pageCount = students.size() % pageSize == 0?(students.size() / pageSize) : (students.size() / pageSize + 1);
			students = teaAndStuService.getAllStudentInfoWithLimitMore(currentPage, pageSize, key);
			page.setList(students);
			page.setPageCount(pageCount);
			map.put("students", page);
			map.put("status", 200);
			map.put("statusText", "获取成功");
		} else {
			map.put("status", 400);
			map.put("statusText", "没有相关信息");
		}
		return map;
	}
	// 获取所有的名人堂学生的信息
	@GetMapping("/famous")
	public Map<String, Object> getAllFamous(){
		Map<String, Object> map = new HashMap<String, Object>();
		List<FamousStudent> famous = teaAndStuService.getFamousStudent();
		if (famous != null) {
			map.put("famous", famous);
			map.put("status", 200);
			map.put("statusText", "获取成功");
		} else {
			map.put("status", 400);
			map.put("statusText", "没有相关信息");
		}
		return map;
	}
	// 根据老师或学生的id查找相应的信息
	@GetMapping("/teaorstuinfo")
	public Map<String, Object> getTeacherOrStudentInfo(String id){
		Map<String, Object> map = new HashMap<String, Object>();
		String[] idCategory = id.split(":");
		if (idCategory[0].equals("t") || idCategory[0].equals("T")) {
			Teacher teacher = teaAndStuService.getTeacherInfoByUid(Integer.parseInt(idCategory[1]));
			teaAndStuService.updateTeacherReaderNum(Integer.parseInt(idCategory[1]));
			List<String> teadesc = readStudentInfo("teadesc", teacher.getUname());
			if (teacher != null && teadesc != null) {
				map.put("status", 200);
				map.put("teaorstu", teacher);
				map.put("statusText", "信息获取成功");
			} else {
				map.put("status", 400);
				map.put("statusText", "信息获取失败");
			}
		} else if (idCategory[0].equals("s") || idCategory[0].equals("S")) {
			Student student = teaAndStuService.getStudentInfoBySid(Integer.parseInt(idCategory[1]));
			teaAndStuService.updateStudentReaderNum(Integer.parseInt(idCategory[1]));
			
			if (student != null) {
				map.put("status", 200);
				map.put("teaorstu", student);
				map.put("statusText", "信息获取成功");
			} else {
				map.put("status", 400);
				map.put("statusText", "信息获取失败");
			}
		}
		return map;
	}
	private List<String> readStudentInfo(String category, String uname) {
		List<String> desc = new ArrayList<String>();
		BufferedReader buffer = null;
		String content = null;
		InputStream input = null;
		input = this.getClass().getResourceAsStream("/" + category + "/" + uname + ".txt");
		try {
			if (input != null) {
				buffer = new BufferedReader(new InputStreamReader(input));
				while ((content = buffer.readLine()) != null) {
					desc.add(content);
				}
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (input != null) {
				try {
					input.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (buffer != null) {
				try {
					buffer.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return desc;
	}
	// 添加学生详细信息
	@PostMapping("/addintrostu")
	public Map<String, Object> addIntroStu(@RequestBody IntroStu introStu){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean addSuccess = introStuService.addIntroStu(introStu);
		if (addSuccess) {
			map.put("status", 200);
			map.put("statusText", "添加成功");
		} else {
			map.put("status", 400);
			map.put("statusText", "添加失败");
		}
		return map;
	}
	// 删除教师某些详细信息
	@GetMapping("/deleteintrostu")
	public Map<String, Object> deleteIntroStu(String id){
		Map<String, Object> map = new HashMap<String, Object>();
		String[] introTeaId = id.split(":");
		try {
			for (int i = 1;i < introTeaId.length;i++) {
				introStuService.deleteIntroStuById(Integer.parseInt(introTeaId[1]));
			}
			map.put("status", 200);
			map.put("statusText", "删除成功");
			return map;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		map.put("status", 500);
		map.put("statusText", "删除失败");
		return map;
	}
	// 修改教师的详细信息
	@PostMapping("/updateintrostu")
	public Map<String, Object> updateIntroStu(@RequestBody IntroStu introStu){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = introStuService.updateIntroStuInfo(introStu);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "修改成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "修改失败");
		}
		return map;
	}
	// 修改教师的详细信息
	@GetMapping("/deleteonecateforstu")
	public Map<String, Object> deleteOneCategoryForStu(String category){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = true;
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "删除成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "删除失败");
		}
		return map;
	}
	// 根据id获取学生的某条详细信息
	@GetMapping("/getintrostubyid")
	public Map<String, Object> getIntroStuById(Integer id){
		Map<String, Object> map = new HashMap<String, Object>();
		IntroStu introStu = introStuService.getIntroStuByid(id);
		if (introStu != null) {
			map.put("status", 200);
			map.put("introtea", introStu);
			map.put("statusText", "数据获取成功s");
		} else {
			map.put("status", 500);
			map.put("statusText", "数据获取失败");
		}
		return map;
	}
	// 添加教师详细信息
	@PostMapping("/addintrotea")
	public Map<String, Object> addIntroTea(@RequestBody IntroTea introTea){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean addSuccess = introTeaService.addIntroTea(introTea);
		if (addSuccess) {
			map.put("status", 200);
			map.put("statusText", "添加成功");
		} else {
			map.put("status", 400);
			map.put("statusText", "添加失败");
		}
		return map;
	}
	// 删除教师某些详细信息
	@GetMapping("/deleteintrotea")
	public Map<String, Object> deleteIntroTea(String id){
		Map<String, Object> map = new HashMap<String, Object>();
		String[] introTeaId = id.split(":");
		try {
			for (int i = 1;i < introTeaId.length;i++) {
				introTeaService.deleteIntroTeaById(Integer.parseInt(introTeaId[1]));
			}
			map.put("status", 200);
			map.put("statusText", "删除成功");
			return map;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		map.put("status", 500);
		map.put("statusText", "删除失败");
		return map;
	}
	// 修改教师的详细信息
	@PostMapping("/updateintrotea")
	public Map<String, Object> updateIntroTea(@RequestBody IntroTea introTea){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = introTeaService.updateIntroTeaInfo(introTea);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "修改成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "修改失败");
		}
		return map;
	}
	// 修改教师的详细信息
	@GetMapping("/deleteonecatefortea")
	public Map<String, Object> deleteOneCategory(String category){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = true;
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "删除成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "删除失败");
		}
		return map;
	}
	// 根据id获取教师的某条详细信息
	@GetMapping("/getintroteabyid")
	public Map<String, Object> getIntroTeaById(Integer id){
		Map<String, Object> map = new HashMap<String, Object>();
		IntroTea introTea = introTeaService.getIntroTeaByid(id);
		if (introTea != null) {
			map.put("status", 200);
			map.put("introtea", introTea);
			map.put("statusText", "数据获取成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "数据获取失败");
		}
		return map;
	}
	// 更新教师信息
	@PostMapping("/updatetea")
	public Map<String, Object> updateTeaInfo(@RequestBody Teacher teacher){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = teaAndStuService.updateTeaInfo(teacher);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "修改成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "修改失败");
		}
		return map;
	}
	// 更新学生信息
	@PostMapping("/updatestu")
	public Map<String, Object> updateStuInfo(@RequestBody Student student){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = teaAndStuService.updateStuInfo(student);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "修改成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "修改失败");
		}
		return map;
	}
	// 添加教师信息
	@PostMapping("/addtea")
	public Map<String, Object> addTea(@RequestBody Teacher teacher){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = teaAndStuService.addTeacherInfo(teacher);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "添加成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "添加失败");
		}
		return map;
	}
	// 添加学生信息
	@PostMapping("/addstu")
	public Map<String, Object> addStu(@RequestBody Student student){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = teaAndStuService.addStudentInfo(student);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "添加成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "添加失败");
		}
		return map;
	}
	// 删除教师信息
	@GetMapping("/deletetea")
	public Map<String, Object> deleteTea(Integer uid){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = teaAndStuService.deleteTeaInfo(uid);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "删除成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "删除失败");
		}
		return map;
	}
	// 删除教师信息
	@GetMapping("/deletestu")
	public Map<String, Object> deleteStu(Integer sid){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = teaAndStuService.deleteStuInfo(sid);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "删除成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "删除失败");
		}
		return map;
	}
	// 用户阅读某个教师或学生的信息
	@GetMapping("/userreaderforteaandstu")
	public Map<String, Object> updateUserReaderForTeaAndStu(String toid, Integer userid, String date){
		UserOperation userOperation = new UserOperation();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("userid", userid);
		params.put("otherid", toid);
		List<UserOperation> allUserOperation = userOperationService.getAllOperationByUseridAndToid(params);
		Map<String, Object> map = new HashMap<String, Object>();
		if (allUserOperation != null && allUserOperation.size() > 0) {
			map.put("status", 200);
			map.put("statusText", "获取成功");
			map.put("useroperation", allUserOperation);
		}
		userOperation.setOdate(date);
		userOperation.setOperation("阅读");
		userOperation.setOtherid(toid);
		userOperation.setUserid(userid);
		UserOperation checkUserOperation = userOperationService.checkUserOperationIsRepeat(userOperation);
		if (checkUserOperation == null) {
			userOperationService.addUserOperation(userOperation);
		}
		return map;
	}
	// 删除教师信息
	@GetMapping("/addteauthumbup")
	public Map<String, Object> addTeaUthumbup(Integer userid, String toid, String date, String operation){
		Map<String, Object> map = new HashMap<String, Object>();
		String[] id = toid.split(":");
		boolean isSuccess = teaAndStuService.updateTeacherUthumbupAdd(Integer.valueOf(id[1]));
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "添加成功");
			UserOperation userOperation = new UserOperation();
			userOperation.setOdate(date);
			userOperation.setOperation(operation);
			userOperation.setOtherid(toid);
			userOperation.setUserid(userid);
			userOperationService.addUserOperation(userOperation);
		} else {
			map.put("status", 500);
			map.put("statusText", "添加失败");
		}
		return map;
	}
	// 删除教师信息
	@GetMapping("/reteauthumbup")
	public Map<String, Object> reTeaUthumbup(Integer userid, String toid, String operation){
		Map<String, Object> map = new HashMap<String, Object>();
		String[] id = toid.split(":");
		boolean isSuccess = teaAndStuService.updateTeacherUthumbupRe(Integer.valueOf(id[1]));
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "删除成功");
			Map<String, Object> params = new HashMap<String, Object>();
			UserOperation deleteOperation = new UserOperation();
			deleteOperation.setOtherid(toid);
			deleteOperation.setUserid(userid);
			deleteOperation.setOperation(operation);
			boolean success = userOperationService.deleteUserOperationByUseridAndOperation(deleteOperation);
		} else {
			map.put("status", 500);
			map.put("statusText", "删除失败");
		}
		return map;
	}
	// 删除教师信息
	@GetMapping("/addstuuthumbup")
	public Map<String, Object> addStuUthumbup(Integer userid, String toid, String date, String operation){
		Map<String, Object> map = new HashMap<String, Object>();
		String[] id = toid.split(":");
		boolean isSuccess = teaAndStuService.updateStudentUthumbupAdd(Integer.valueOf(id[1]));
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "添加成功");
			UserOperation userOperation = new UserOperation();
			userOperation.setOdate(date);
			userOperation.setOperation(operation);
			userOperation.setOtherid(toid);
			userOperation.setUserid(userid);
			userOperationService.addUserOperation(userOperation);
		} else {
			map.put("status", 500);
			map.put("statusText", "添加失败");
		}
		return map;
	}
	// 删除教师信息
	@GetMapping("/restuuthumbup")
	public Map<String, Object> reStuUthumbup(Integer userid, String toid, String operation){
		Map<String, Object> map = new HashMap<String, Object>();
		String[] id = toid.split(":");
		boolean isSuccess = teaAndStuService.updateStudentUthumbupRe(Integer.valueOf(id[1]));
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "删除成功");
			Map<String, Object> params = new HashMap<String, Object>();
			UserOperation deleteOperation = new UserOperation();
			deleteOperation.setOtherid(toid);
			deleteOperation.setUserid(userid);
			deleteOperation.setOperation(operation);
			boolean success = userOperationService.deleteUserOperationByUseridAndOperation(deleteOperation);
		} else {
			map.put("status", 500);
			map.put("statusText", "删除失败");
		}
		return map;
	}
}
