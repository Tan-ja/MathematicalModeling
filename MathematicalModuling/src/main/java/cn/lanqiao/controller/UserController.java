package cn.lanqiao.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.lanqiao.entity.AcademicDynamic;
import cn.lanqiao.entity.CheckUserEmail;
import cn.lanqiao.entity.Page;
import cn.lanqiao.entity.Student;
import cn.lanqiao.entity.Teacher;
import cn.lanqiao.entity.User;
import cn.lanqiao.entity.UserLogin;
import cn.lanqiao.entity.UserOperation;
import cn.lanqiao.entity.UserOperationExtend;
import cn.lanqiao.entity.UserUpdateUpassword;
import cn.lanqiao.service.AcademicService;
import cn.lanqiao.service.CommentService;
import cn.lanqiao.service.TeacherAndStudentService;
import cn.lanqiao.service.UserLoginService;
import cn.lanqiao.service.UserOperationService;
import cn.lanqiao.service.UserService;
import cn.lanqiao.util.SendmailUtil;

@CrossOrigin // 跨域
@RequestMapping("/api/user") // 窄化路径
@RestController // 将该类中的所有的返回数据转换成JSON格式
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private UserOperationService userOperationService;
	@Autowired
	private TeacherAndStudentService teaAndStuService;
	@Autowired
	private AcademicService acadeService;
	@Autowired
	private CommentService commentService;
	@Autowired
	private UserLoginService ulService;
	@PostMapping("/login")
	public Map<String, Object> login(@RequestBody UserLogin login){
		Map<String, Object> map = null;
		if (login != null) {
			map = new HashMap<String, Object>();
		}
		User user = userService.getUserByName(login.getUloginid());
		if (user != null) {
			if (!user.getUpassword().equals(login.getUpassword()) || !login.getUloginid().equals(user.getUloginid())) {
				map.put("status", 400);
				map.put("statusText", "账号或密码错误");
				return map;
			}
			if (user != null) {
				map.put("user", user);
				map.put("status", 200);
				map.put("statusText", "登录成功");
				Map<String, Object> newMap = new HashMap<String, Object>();
				newMap.put("uonline", "在线");
				newMap.put("userid", user.getUserid());
				userService.updateUserIsOnline(newMap);
			}
		} else {
			map.put("status", 404);
			map.put("statusText", "没有此账号");
		}
		return map;
	}
	@PostMapping("/loginforadmind")
	public Map<String, Object> loginForAdmin(@RequestBody User login){
		Map<String, Object> map = null;
		if (login != null) {
			map = new HashMap<String, Object>();
		}
		User user = userService.login(login.getUloginid(), login.getUpassword());
		if (user != null) {
			if (user.getUrole() == 0) {
				map.put("status", 300);
				map.put("statusText", "此用户不是系统管理员");
				return map;
			}
			if (!user.getUpassword().equals(login.getUpassword()) || !login.getUloginid().equals(user.getUloginid())) {
				map.put("status", 400);
				map.put("statusText", "账号或密码错误");
				return map;
			}
			if (user != null) {
				map.put("user", user);
				map.put("status", 200);
				map.put("statusText", "登录成功");
				Map<String, Object> newMap = new HashMap<String, Object>();
				newMap.put("uonline", "在线");
				newMap.put("userid", user.getUserid());
				userService.updateUserIsOnline(newMap);
			}
		} else {
			map.put("status", 404);
			map.put("statusText", "没有此账号");
		}
		return map;
	}
	@PostMapping("/outline")
	public Map<String, Object> outLine(@RequestBody User login){
		Map<String, Object> map = null;
		if (login != null) {
			map = new HashMap<String, Object>();
		}
		User user = userService.login(login.getUloginid(), login.getUpassword());
		map.put("status", 200);
		map.put("statusText", "用户不在线");
		Map<String, Object> newMap = new HashMap<String, Object>();
		newMap.put("userid", user.getUserid());
		newMap.put("uonline", "离线");
		userService.updateUserIsOnline(newMap);
		return map;
	}
	// 用户注册
	@PostMapping("/registry")
	public Map<String, Object> userRegistry(@RequestBody User userRegistryInfo){
		userRegistryInfo.setUloginid(userRegistryInfo.getUloginid().trim());
		userRegistryInfo.setCreatetime(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		userRegistryInfo.setUemail(userRegistryInfo.getUemail().trim());
		userRegistryInfo.setUpassword(userRegistryInfo.getUpassword().trim());
		userRegistryInfo.setUserfrom(userRegistryInfo.getUserfrom().trim());
		userRegistryInfo.setUsernickname(userRegistryInfo.getUsernickname().trim());
		userRegistryInfo.setUsersignature(userRegistryInfo.getUsersignature());
		userRegistryInfo.setUonline("离线");
		userRegistryInfo.setUrole(0);
		Map<String, Object> map = new HashMap<String, Object>();
		if (userService.addUser(userRegistryInfo)) {
			map.put("status", 200);
			map.put("statusText", "注册成功");
		} else {
			map.put("status", 400);
			map.put("statusText", "注册失败");
		}
		return map;
	}
	// 用户注册
	@PostMapping("/registryforadmind")
	public Map<String, Object> userRegistryForAdmin(@RequestBody User userRegistryInfo){
		userRegistryInfo.setUloginid(userRegistryInfo.getUloginid().trim());
		userRegistryInfo.setCreatetime(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		userRegistryInfo.setUemail(userRegistryInfo.getUemail().trim());
		userRegistryInfo.setUpassword(userRegistryInfo.getUpassword().trim());
		userRegistryInfo.setUserfrom(userRegistryInfo.getUserfrom().trim());
		userRegistryInfo.setUsernickname(userRegistryInfo.getUsernickname().trim());
		userRegistryInfo.setUsersignature(userRegistryInfo.getUsersignature());
		userRegistryInfo.setUonline("离线");
		if (userRegistryInfo.getUstunum().equals("")) {
			userRegistryInfo.setUrole(1);
		} else {
			userRegistryInfo.setUrole(2);
		}
		Map<String, Object> map = new HashMap<String, Object>();
		if (userService.addUser(userRegistryInfo)) {
			map.put("status", 200);
			map.put("statusText", "注册成功");
		} else {
			map.put("status", 400);
			map.put("statusText", "注册失败");
		}
		return map;
	}
	@GetMapping("/checkrepeat")
	public Map<String, Object> checkRepeat(String uloginid){
		Map<String, Object> map = new HashMap<String, Object>();
		User user = userService.getUserByName(uloginid);
		User userByStunum = userService.getUserByUstunum(uloginid);
		if (user == null && userByStunum == null) {
			map.put("status", 200);
			map.put("statusText", "验证通过");
		} else {
			map.put("status", 201);
			map.put("statusText", "此账号已经存在");
		}
		return map;
	}
	// 修改用户信息
	@PostMapping("/updateuserinfo")
	public Map<String, Object> updateUserInFO(@RequestBody User user){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = userService.updateUserInfo(user);
		User newUser = userService.getUserByName(user.getUloginid());
		boolean success = commentService.updateCommentByUserid(newUser);
		if (isSuccess && newUser != null && success) {
			map.put("status", 200);
			map.put("newuser", newUser);
			map.put("statusText", "修改成功");
		} else {
			map.put("status", 400);
			map.put("statusText", "修改失败");
		}
		return map;
	}
	// 修改用户密码
	@PostMapping("/updateupassword")
	public Map<String, Object> updateUserUpassword(@RequestBody UserUpdateUpassword userUpdateUpassword){
		Map<String, Object> map = new HashMap<String, Object>();
		User user = userService.getUserByName(userUpdateUpassword.getUloginid());
		if (user != null) {
			user.setUpassword(userUpdateUpassword.getNewpassword());
			UserLogin userLogin = new UserLogin();
			userLogin.setUloginid(userUpdateUpassword.getUloginid());
			userLogin.setUpassword(userUpdateUpassword.getNewpassword());
			userLogin.setUserid(user.getUserid());
			ulService.updateUserLoginid(userLogin);
		}
		boolean success = userService.updateUserUpassword(user);
		if (success) {
			map.put("status", 200);
			map.put("statusText", "修改成功");
		} else {
			map.put("status", 400);
			map.put("statusText", "修改失败");
		}
		return map;
	}
	// 验证用户邮箱
	@PostMapping("/checkemail")
	public Map<String, Object> checkUserEmail(@RequestBody CheckUserEmail checkUserEmail){
		Map<String, Object> map = new HashMap<String, Object>();
		User user = userService.getUserByName(checkUserEmail.getUloginid());
		if (user != null && user.getUemail().equals(checkUserEmail.getUemail())) {
			//随机生成四位数验证码
			String codes = "123456789";
			Random rand = new Random();
			String validateCode = "";
			for(int i=0;i<4;i++) {
				int index = rand.nextInt(codes.length());
				char c = codes.charAt(index);
				validateCode = c + validateCode;
			}
			try {
				SendmailUtil.sendEmail(user.getUemail(), "数模人数学建模竞赛网站", "验证码:" + validateCode);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			map.put("responsecode", validateCode);
			map.put("status", 200);
			map.put("statusText", "修改成功");
			return map;
		}
		map.put("status", 400);
		map.put("statusText", "修改失败");
		return map;
	}
	// 分页查询用户
	@GetMapping("/getalluser")
	public Map<String, Object> getAllUser(int currentPage, int pageSize, String key){
		Map<String, Object> map = new HashMap<String, Object>();
		List<User> allUserPage = null;
		List<User> allUserPageLimit = null;
		int pageCount = 0;
		if (key != null) {
			allUserPage = userService.getAllUserByPage(currentPage, pageSize, key);
		}
		if (allUserPage != null) {
			Page<User> page = new Page<User>();
			page.setCurrentPage(currentPage);
			page.setPageSize(pageSize);
			allUserPageLimit = userService.getAllUserByPageLimit(key);
			page.setTotal(allUserPageLimit.size());
			pageCount = allUserPageLimit.size() % pageSize == 0?(allUserPageLimit.size() / pageSize) : (allUserPageLimit.size() / pageSize + 1);
			page.setList(allUserPage);
			page.setPageCount(pageCount);
			map.put("status", 200);
			map.put("alluser", page);
			map.put("statusText", "修改成功");
		} else {
			map.put("status", 400);
			map.put("statusText", "修改失败");
		}
		return map;
	}
	// 获取某个用户的全部信息
	@GetMapping("/getuserinfo")
	public Map<String, Object> getUserInfo(Integer userid){
		Map<String, Object> map = new HashMap<String, Object>();
		User user = userService.getUserByUserId(userid);
		List<UserOperation> allUserOperation = userOperationService.getAllOperationByUserid(userid);
		List<Object> reader = new ArrayList<Object>();
		List<Object> takeCom = new ArrayList<Object>();
		List<Object> approve = new ArrayList<Object>();
		if (allUserOperation != null && allUserOperation.size() > 0) {
			sortUserOperation(reader, takeCom, approve, allUserOperation);
		}
		if (user != null) {
			map.put("status", 200);
			map.put("userinfo", user);
			map.put("useroperation", allUserOperation);
			map.put("reader", reader);
			map.put("takeCom", takeCom);
			map.put("approve", approve);
			map.put("statusText", "获取成功");
		} else {
			map.put("status", 201);
			map.put("statusText", "获取失败");
		}
		return map;
	}
	@GetMapping("/deleteuserbyuserid")
	public Map<String, Object> deleteUserByUserid(Integer userid){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = userService.deleteByUserid(userid);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "删除成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "删除失败");
		}
		return map;
	}
	private void sortUserOperation(List<Object> reader, List<Object> takeCom, List<Object> approve, List<UserOperation> allUserOperation) {
		for (int i = 0;i < allUserOperation.size();i++) {
			UserOperation userOperation = allUserOperation.get(i);
			if ("阅读".equals(userOperation.getOperation())) {
				String[] cate = userOperation.getOtherid().split(":");
				if ("T".equals(cate[0]) || "t".equals(cate[0])) {
					UserOperationExtend extend = new UserOperationExtend();
					Teacher teacher = teaAndStuService.getTeacherInfoByUid(Integer.valueOf(cate[1]));
					extend.setEntity(teacher);
					extend.setOdate(userOperation.getOdate());
					extend.setId(i + 1);
					reader.add(extend);
				} else if ("S".equals(cate[0]) || "s".equals(cate[0])) {
					UserOperationExtend extend = new UserOperationExtend();
					Student student = teaAndStuService.getStudentInfoBySid(Integer.valueOf(cate[1]));
					extend.setEntity(student);
					extend.setOdate(userOperation.getOdate());
					extend.setId(i + 1);
					reader.add(extend);
				} else {
					UserOperationExtend extend = new UserOperationExtend();
					AcademicDynamic acade = acadeService.getAcademicDynamicById(Integer.valueOf(cate[1]));
					extend.setEntity(acade);
					extend.setOdate(userOperation.getOdate());
					extend.setId(i + 1);
					reader.add(extend);
				}
			} else if ("评论".equals(userOperation.getOperation())) {
				String[] cate = userOperation.getOtherid().split(":");
				if ("T".equals(cate[0]) || "t".equals(cate[0])) {
					UserOperationExtend extend = new UserOperationExtend();
					Teacher teacher = teaAndStuService.getTeacherInfoByUid(Integer.valueOf(cate[1]));
					extend.setEntity(teacher);
					extend.setOdate(userOperation.getOdate());
					extend.setId(i + 1);
					takeCom.add(extend);
				} else if ("S".equals(cate[0]) || "s".equals(cate[0])) {
					UserOperationExtend extend = new UserOperationExtend();
					Student student = teaAndStuService.getStudentInfoBySid(Integer.valueOf(cate[1]));
					extend.setEntity(student);
					extend.setOdate(userOperation.getOdate());
					extend.setId(i + 1);
					takeCom.add(extend);
				} else {
					UserOperationExtend extend = new UserOperationExtend();
					AcademicDynamic acade = acadeService.getAcademicDynamicById(Integer.valueOf(cate[1]));
					extend.setEntity(acade);
					extend.setOdate(userOperation.getOdate());
					extend.setId(i + 1);
					takeCom.add(extend);
				}
			} else if ("点赞".equals(userOperation.getOperation())) {
				String[] cate = userOperation.getOtherid().split(":");
				if ("T".equals(cate[0]) || "t".equals(cate[0])) {
					UserOperationExtend extend = new UserOperationExtend();
					Teacher teacher = teaAndStuService.getTeacherInfoByUid(Integer.valueOf(cate[1]));
					extend.setEntity(teacher);
					extend.setOdate(userOperation.getOdate());
					extend.setId(i + 1);
					approve.add(extend);
				} else if ("S".equals(cate[0]) || "s".equals(cate[0])) {
					UserOperationExtend extend = new UserOperationExtend();
					Student student = teaAndStuService.getStudentInfoBySid(Integer.valueOf(cate[1]));
					extend.setEntity(student);
					extend.setOdate(userOperation.getOdate());
					extend.setId(i + 1);
					approve.add(extend);
				} else {
					UserOperationExtend extend = new UserOperationExtend();
					AcademicDynamic acade = acadeService.getAcademicDynamicById(Integer.valueOf(cate[1]));
					extend.setEntity(acade);
					extend.setOdate(userOperation.getOdate());
					extend.setId(i + 1);
					approve.add(extend);
				}
			}
		}
	}
}
