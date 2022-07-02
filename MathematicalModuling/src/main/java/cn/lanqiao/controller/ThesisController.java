package cn.lanqiao.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.lanqiao.entity.Attachment;
import cn.lanqiao.entity.Thesis;
import cn.lanqiao.entity.ThesisExtend;
import cn.lanqiao.service.AttachmentService;
import cn.lanqiao.service.ThesisService;

@CrossOrigin // 跨域
@RequestMapping("/api/thesis") // 窄化路径
@RestController // 将该类中的所有的返回数据转换成JSON格式
public class ThesisController {
	@Autowired
	private ThesisService thesisService;
	@Autowired
	private AttachmentService attachmentService;
	@PostMapping("/addthesis")
	public Map<String, Object> addThesis(@RequestBody ThesisExtend thesis){
		Thesis newThesis = new Thesis();
		newThesis.setMatchid(thesis.getMatchid());
		newThesis.setTeamid(thesis.getTeamid());
		newThesis.setThecontent(thesis.getThecontent());
		newThesis.setThedate(thesis.getThedate());
		Map<String, Object> map = new HashMap<String, Object>();
		Thesis oldThesis = thesisService.getThesisByTeamidAndMatchid(thesis.getTeamid(), thesis.getMatchid());
		if (oldThesis != null) {
			Thesis newThesisTwo = new Thesis();
			newThesisTwo.setId(oldThesis.getId());
			newThesisTwo.setMatchid(oldThesis.getMatchid());
			newThesisTwo.setTeamid(oldThesis.getTeamid());
			newThesisTwo.setThecontent(oldThesis.getThecontent());
			newThesisTwo.setThedate(oldThesis.getThedate());
			boolean isUpdate = thesisService.updateThesis(newThesisTwo);
			if (isUpdate) {
				List<String> newFilePath = thesis.getFilepath();
				if (newFilePath != null && newFilePath.size() > 0) {
					attachmentService.deleteAttachmentByObjid(thesis.getTeamid());
					Attachment attachment = null;
					for (int i = 0;i < newFilePath.size();i++) {
						attachment = new Attachment();
						attachment.setFilename(newFilePath.get(i));
						attachment.setObjid(oldThesis.getId());
						attachment.setAcategory(2);
						attachmentService.addAttachment(attachment);
					}
				}
				map.put("status", 303);
				map.put("statusText", "提交成功");
				return map;
			} else {
				map.put("status", 500);
				map.put("statusText", "网络异常");
				return map;
			}
		}
		boolean isSuccess = thesisService.addThesis(newThesis);
		if (isSuccess) {
			Thesis newThesisTwo = thesisService.getThesisByTeamidAndMatchid(thesis.getTeamid(), thesis.getMatchid());
			if (newThesisTwo != null) {
				Attachment attachment = null;
				List<String> filePath = thesis.getFilepath();
				if (filePath != null && filePath.size() > 0) {
					for (int i = 0;i < filePath.size();i++) {
						attachment = new Attachment();
						attachment.setFilename(filePath.get(i));
						attachment.setObjid(newThesisTwo.getId());
						attachment.setAcategory(2);
						attachmentService.addAttachment(attachment);
					}
				}
				map.put("status", 200);
				map.put("newthesisid", newThesisTwo.getId());
				map.put("statusText", "论文提交成功");
			} else {
				map.put("status", 500);
				map.put("statusText", "论文提交失败");
			}
		}
		return map;
	}
}
