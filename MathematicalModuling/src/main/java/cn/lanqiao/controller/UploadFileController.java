package cn.lanqiao.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.server.PathParam;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;

import com.alibaba.druid.support.logging.Log;
import com.alibaba.druid.support.logging.Log4jImpl;

import cn.lanqiao.entity.PreReadUploadConfig;
import cn.lanqiao.service.AttachmentService;
import cn.lanqiao.service.PersonalService;

@CrossOrigin
@RequestMapping("/api/upload")
@RestController
public class UploadFileController {
	@Autowired
	private PersonalService personalService;
	@Autowired
	private PreReadUploadConfig uploadConfig;
	@Autowired
	private AttachmentService attachmentService;
	@PostMapping("/postfile")
    public String fileUpload(@RequestParam("file") MultipartFile file) {
        return personalService.fileUpload(file);
    }
	@PostMapping("/uploadteapic")
    public String uploadTeacherPicture(@RequestParam("file") MultipartFile file) {
        return personalService.uploadTeacherPicture(file);
    }
	@PostMapping("/uploadstupic")
    public String uploadStudentPicture(@RequestParam("file") MultipartFile file) {
        return personalService.uploadStudentPicture(file);
    }
	@PostMapping("/uploadacademicattachment")
    public String uploadAcademicAttachment(@RequestParam("file") MultipartFile file) {
        return personalService.uploadAcademicAttachment(file);
    }
	@GetMapping("/deleteuploadfile")
    public Map<String, Object> deleteUploadFile(String category, String filepath, Integer objid) {
		Map<String, Object> map = new HashMap<String, Object>();
		File oldFile = new File(uploadConfig.getUploadPath() + "/" + category + "/" + filepath.substring(filepath.lastIndexOf("/") + 1));
        if (oldFile.exists()) {
        	oldFile.delete();
        }
        if (!oldFile.exists()) {
        	if (attachmentService.deleteAttachmentByObjidAndFilename(objid, filepath)) {
        		map.put("status", 200);
        		map.put("statusText", "删除成功");
        		return map;
        	} else {
        		map.put("status", 500);
                map.put("statusText", "删除失败");
                return map;
        	}
        } else {
        	map.put("status", 500);
            map.put("statusText", "删除失败");
        }
		return map;
    }
	@DeleteMapping("/deleteuploadfilenolimit")
    public Map<String, Object> deleteUploadFile(String category, String filepath) {
		Map<String, Object> map = new HashMap<String, Object>();
		File oldFile = new File(uploadConfig.getUploadPath() + "/" + category + "/" + filepath.substring(filepath.lastIndexOf("/") + 1));
        if (oldFile.exists()) {
        	oldFile.delete();
        }
        if (!oldFile.exists()) {
    		map.put("status", 200);
    		map.put("statusText", "删除成功");
        } else {
        	map.put("status", 500);
            map.put("statusText", "删除失败");
        }
		return map;
    }
	@PostMapping("/uploadthesisattach")
    public String uploadThesisAttach(@RequestParam("file") MultipartFile file) {
        return personalService.fileUploadForThesisAttachment(file);
    }
	// vue-quill-editor的接口(上传文件)
	@PostMapping("/postfileforimage")
    public Map<String, Object> fileUploadForImage(@RequestParam("file") MultipartFile file) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<Map<String, Object>> value = new ArrayList<Map<String,Object>>();
		Map<String, Object> picURL = new HashMap<String, Object>();
		picURL.put("url", personalService.uploadAcademicContentForImage(file));
		picURL.put("alt", "图片");
		picURL.put("href", "href");
		value.add(picURL);
		map.put("error", 0);
		map.put("data", value);
        return map;
    }
	// wangEditor的接口(上传视频)
	@PostMapping("/postfileforvideo")
    public Map<String, Object> fileUploadForVideo(@RequestParam("file") MultipartFile file) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<Map<String, Object>> value = new ArrayList<Map<String,Object>>();
		Map<String, Object> picURL = new HashMap<String, Object>();
		picURL.put("url", personalService.uploadAcademicContentForVideo(file));
		value.add(picURL);
		map.put("error", 0);
		map.put("data", value);
        return map;
    }
	// 各种文章上传附件
	@RequestMapping("/matchattachment")
    public Object fileUploadForMatchAttchment(@RequestParam("file") MultipartFile file, HttpServletRequest request) {
		Integer objid = Integer.valueOf(String.valueOf(request.getParameter("objid")));
        return personalService.fileUploadForMatchAttchment(file, objid);
    }
	@GetMapping("/payformatch")
	public Object userPayForMatch(String phoneNum) {
        return "helloworld";
    }
}