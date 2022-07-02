package cn.lanqiao.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.lanqiao.entity.AcademicDynamic;
import cn.lanqiao.entity.AcademicExtend;
import cn.lanqiao.entity.AllOptionDesc;
import cn.lanqiao.entity.Attachment;
import cn.lanqiao.entity.Page;
import cn.lanqiao.entity.UserOperation;
import cn.lanqiao.service.AcademicService;
import cn.lanqiao.service.AttachmentService;
import cn.lanqiao.service.UserOperationService;
@CrossOrigin
@RequestMapping("/api/academic")
@RestController
public class AcademicController {
	@Autowired
	private AcademicService academicService;
	@Autowired
	private UserOperationService userOperationService;
	@Autowired
	private AttachmentService attachService;
	@GetMapping("/all")
	public Map<String, Object> getAllAcademicDynamic(String acategory, int currentPage, int pageSize){
		Map<String, Object> map = new HashMap<String, Object>();
		int pageCount = 0;
		if (acategory == null || acategory.equals("")) {
			map.put("status", 400);
			map.put("statusText", "查询信息为空");
			return map;
		}
		Page<AcademicDynamic> page = new Page<AcademicDynamic>();
		List<AcademicDynamic> acade = academicService.getAllAcademicDynamicNoLimit(acategory);
		page.setCurrentPage(currentPage);
		page.setPageSize(pageSize);
		page.setTotal(acade.size());
		pageCount = acade.size() % pageSize == 0?(acade.size() / pageSize) : (acade.size() / pageSize + 1);
		acade = academicService.getAllAcademicDynamic(acategory, currentPage, pageSize);
		page.setList(acade);
		page.setPageCount(pageCount);
		if (acade != null && acade.size() > 0) {
			map.put("academics", page);
			map.put("status", 200);
			map.put("statusText", "获取成功");
		} else {
			map.put("status", 400);
			map.put("statusText", "没有相关信息");
		}
		return map;
	}
	// 用户主页面进行搜索
	@GetMapping("/allbykey")
	public Map<String, Object> getAllSearchAcademicDynamicForUser(String key, int currentPage, int pageSize){
		Map<String, Object> map = new HashMap<String, Object>();
		int pageCount = 0;
		Page<AcademicDynamic> page = new Page<AcademicDynamic>();
		List<AcademicDynamic> acade = academicService.getAllAcademicDynamicByFuzzyQueryForUser(key);
		if (acade == null) {
			map.put("status", 400);
			map.put("statusText", "没有相关信息");
			return map;
		}
		page.setCurrentPage(currentPage);
		page.setPageSize(pageSize);
		page.setTotal(acade.size());
		pageCount = acade.size() % pageSize == 0?(acade.size() / pageSize) : (acade.size() / pageSize + 1);
		acade = academicService.getAllAcademicDynamicByFuzzyQueryForUserByPage(key, currentPage, pageSize);
		page.setList(acade);
		page.setPageCount(pageCount);
		if (acade != null && acade.size() > 0) {
			map.put("academics", page);
			map.put("status", 200);
			map.put("statusText", "获取成功");
		}
		return map;
	}
	@GetMapping("/allfuzzyquery")
	public Map<String, Object> getAllAcademicDynamicByFuzzyQuery(String acategory, int currentPage, int pageSize, String key){
		Map<String, Object> map = new HashMap<String, Object>();
		int pageCount = 0;
		if (acategory == null || acategory.equals("")) {
			map.put("status", 400);
			map.put("statusText", "查询信息为空");
			return map;
		}
		Page<AcademicDynamic> page = new Page<AcademicDynamic>();
		List<AcademicDynamic> acade = academicService.getAcademicDynamicByFuzzyQuery(acategory, key);
		page.setCurrentPage(currentPage);
		page.setPageSize(pageSize);
		page.setTotal(acade.size());
		pageCount = acade.size() % pageSize == 0?(acade.size() / pageSize) : (acade.size() / pageSize + 1);
		acade = academicService.getAllAcademicDynamicByFuzzyQuery(acategory, currentPage, pageSize, key);
		page.setList(acade);
		page.setPageCount(pageCount);
		if (acade != null && acade.size() > 0) {
			map.put("academics", page);
			map.put("status", 200);
			map.put("statusText", "获取成功");
		} else {
			map.put("status", 400);
			map.put("statusText", "没有相关信息");
		}
		return map;
	}
	@GetMapping("/acadedesc")
	public Map<String, Object> getAcademicById(int adid){
		Map<String, Object> map = new HashMap<String, Object>();
		AcademicDynamic acade = academicService.getAcademicDynamicById(adid);
		if (acade != null) {
			List<Attachment> allAttachment = attachService.getAllAttachmentByObjid(adid);
			if (allAttachment != null) {
				map.put("allattachment", allAttachment);
			}
			map.put("status", 200);
			map.put("academic", acade);
			map.put("statusText", "获取成功");
		} else {
			map.put("status", 400);
			map.put("statusText", "没有相关信息");
		}
		return map;
	}
	@GetMapping("/adesc")
	public Map<String, Object> getAcademicDescById(Integer adid){
		Map<String, Object> map = new HashMap<String, Object>();
		AcademicDynamic acade = academicService.getAcademicDynamicById(adid);
		List<Attachment> allAttachment = attachService.getAllAttachmentByObjid(adid);
		if (allAttachment != null) {
			map.put("allattachment", allAttachment);
		}
		map.put("academic", acade);
		map.put("status", 200);
		map.put("statusText", "获取成功");
		
		academicService.updateUserNum(adid);
		return map;
	}
	// 每次用户进入相应页面，页面的访问次数添加一次
	@GetMapping("/updateusernumper")
	public Map<String, Object> updateUserNumPer(String adid, Integer userid, String toid, String date, String operation){
		String[] sort = adid.split(":");
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("userid", userid);
		params.put("otherid", toid);
		List<UserOperation> allUserOperation = userOperationService.getAllOperationByUseridAndToid(params);
		if (sort != null && sort.length != 0) {
			academicService.updateUserNum(Integer.valueOf(sort[1]));
			map.put("status", 200);
			map.put("statusText", "修改成功");
			if (allUserOperation != null && allUserOperation.size() > 0) {
				map.put("useroperation", allUserOperation);
			}
			UserOperation userOperation = new UserOperation();
			userOperation.setOdate(date);
			userOperation.setOperation(operation);
			userOperation.setOtherid(toid);
			userOperation.setUserid(userid);
			UserOperation checkUserOperation = userOperationService.checkUserOperationIsRepeat(userOperation);
			if (checkUserOperation == null) {
				userOperationService.addUserOperation(userOperation);
			}
		} else {
			map.put("status", 500);
			map.put("statusText", "修改失败");
		}
		return map;
	}
	@GetMapping("/deletebyadid")
	public Map<String, Object> deleteAcademicDescByAdid(String allAdid){
		boolean isSuccess = true;
		if (!allAdid.contains(":")) {
			Integer adid = Integer.valueOf(allAdid);
			isSuccess = academicService.deleteAcademicDynamicByAdid(adid);
		} else {
			String[] adids = allAdid.split(":");
			for (int i = 0;i < adids.length;i++) {
				isSuccess = academicService.deleteAcademicDynamicByAdid(Integer.valueOf(adids[i]));
			}
		}
		Map<String, Object> map = new HashMap<String, Object>();
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "删除成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "删除失败");
		}
		return map;
	}
	@PostMapping("/updateacademicdesc")
	public Map<String, Object> updateAcademicDesc(@RequestBody AcademicDynamic academicDynamic){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = academicService.updateAcademicDynamicInfo(academicDynamic);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "修改成功");
		} else {
			map.put("status", 500);
			map.put("statusText", "修改失败");
		}
		return map;
	}
	@PostMapping("/addacademicdesc")
	public Map<String, Object> addAcademicDesc(@RequestBody AcademicExtend academicExDynamic){
		AcademicDynamic academicDynamic = new AcademicDynamic();
		academicDynamic.setAcategory(academicExDynamic.getAcategory());
		academicDynamic.setAcomment(academicExDynamic.getAcomment());
		academicDynamic.setAconsider(academicExDynamic.getAconsider());
		academicDynamic.setAcontent(academicExDynamic.getAcontent());
		academicDynamic.setAcontentdesc(academicExDynamic.getAcontentdesc());
		academicDynamic.setAdate(academicExDynamic.getAdate().substring(0, 10));
		academicDynamic.setAfaceaddress(academicExDynamic.getAfaceaddress());
		academicDynamic.setAfrom(academicExDynamic.getAfrom());
		academicDynamic.setAreaders(0);
		academicDynamic.setAtitle(academicExDynamic.getAtitle());
		Map<String, Object> map = new HashMap<String, Object>();
		AcademicDynamic academic = academicService.getAcademicDynamicBySome(academicDynamic);
		if (academic != null) {
			map.put("status", 300);
			map.put("statusText", "重复添加");
			return map;
		}
		boolean isSuccess = academicService.addAcademicDynamic(academicDynamic);
		if (isSuccess) {
			AcademicDynamic academicTwo = academicService.getAcademicDynamicBySome(academicDynamic);
			if (academicTwo != null) {
				List<String> filePath = academicExDynamic.getFilepath();
				if(filePath.size() > 0) {
					Attachment attachment = null;
					for (int i = 0;i < filePath.size();i++) {
						attachment = new Attachment();
						attachment.setAcategory(0);
						attachment.setFilename(filePath.get(i));
						attachment.setObjid(academicTwo.getAdid());
						if (attachService.checkRepeatAttachment(attachment) == 0) {
							attachService.addAttachment(attachment);
						}
					}
				}
				map.put("checkid", academicTwo.getAdid());
				map.put("status", 200);
				map.put("statusText", "添加成功");
			} else {
				map.put("status", 405);
				map.put("statusText", "服务器异常");
			}
		} else {
			map.put("status", 500);
			map.put("statusText", "添加失败");
		}
		return map;
	}
	@GetMapping("/updateacademicconsideradd")
	public Map<String, Object> updateAcademicConsiderAdd(Integer adid, Integer userid, String toid, String date, String operation){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = academicService.updateAconsiderAdd(adid);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "点赞成功");
			UserOperation userOperation = new UserOperation();
			userOperation.setOdate(date);
			userOperation.setOperation(operation);
			userOperation.setOtherid(toid);
			userOperation.setUserid(userid);
			userOperationService.addUserOperation(userOperation);
		} else {
			map.put("status", 500);
			map.put("statusText", "修改失败");
		}
		return map;
	}
	@GetMapping("/updateacademicconsiderre")
	public Map<String, Object> updateAcademicConsiderRe(Integer adid, Integer userid, String toid, String operation){
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isSuccess = academicService.updateAconsiderRe(adid);
		if (isSuccess) {
			map.put("status", 200);
			map.put("statusText", "点赞失败");
			UserOperation userOperation = new UserOperation();
			userOperation.setOperation(operation);
			userOperation.setOtherid(toid);
			userOperation.setUserid(userid);
			userOperationService.deleteUserOperationByUseridAndOperation(userOperation);
		} else {
			map.put("status", 500);
			map.put("statusText", "修改失败");
		}
		return map;
	}
}
