package cn.lanqiao.service.impl;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import cn.lanqiao.entity.Attachment;
import cn.lanqiao.entity.PreReadUploadConfig;
import cn.lanqiao.service.AttachmentService;
import cn.lanqiao.service.PersonalService;
import cn.lanqiao.util.FileTool;
@Service
public class PersonalServiceTool implements PersonalService {
	@Autowired
	private PreReadUploadConfig uploadConfig;
	@Autowired
	private AttachmentService attachService;
	@Override
	public String fileUpload(MultipartFile file) {
		// TODO Auto-generated method stub
        String fileName = file.getOriginalFilename();
        fileName = FileTool.renameToUUID(fileName);
        File oldFile = new File(uploadConfig.getUploadPath() + "/用户头像/", fileName);
        if (oldFile.exists()) {
        	oldFile.delete();
        }
        try {
            FileTool.uploadFiles(file.getBytes(), uploadConfig.getUploadPath() + "/用户头像/", fileName);
        } catch (Exception e) {
        }
        return "static/用户头像/" + fileName;
	}
	@Override
	public String fileUploadForMatchAttchment(MultipartFile file, Integer objid) {
		// TODO Auto-generated method stub
		String fileName = file.getOriginalFilename();
        File oldFile = new File(uploadConfig.getUploadPath() + "/attachment/", fileName);
        if (oldFile.exists()) {
        	oldFile.delete();
        }
        try {
            FileTool.uploadFiles(file.getBytes(), uploadConfig.getUploadPath() + "/attachment/", fileName);
            Attachment attachment = new Attachment();
            attachment.setObjid(objid);
            attachment.setFilename("static/attachment/" + fileName);
            attachService.addAttachment(attachment);
        } catch (Exception e) {
        }
        return "static/attachment/" + fileName;
	}
	@Override
	public Object userPayForMatch(MultipartFile file) {
		// TODO Auto-generated method stub
		String fileName = file.getOriginalFilename();
//      fileName = FileTool.renameToUUID(fileName);
		File oldFile = new File(uploadConfig.getUploadPath() + "/userpayment/", fileName);
		if (oldFile.exists()) {
			oldFile.delete();
		}
		try {
			FileTool.uploadFiles(file.getBytes(), uploadConfig.getUploadPath() + "/userpayment/", fileName);
		} catch (Exception e) {
		}
		return "static/userpayment/" + fileName;
	}
	@Override
	public String fileUploadForThesisAttachment(MultipartFile file) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
        String fileName = file.getOriginalFilename();
        File oldFile = new File(uploadConfig.getUploadPath() + "/thesisattachment/", fileName);
        if (oldFile.exists()) {
        	oldFile.delete();
        }
        try {
            FileTool.uploadFiles(file.getBytes(), uploadConfig.getUploadPath() + "/thesisattachment/", fileName);
        } catch (Exception e) {
        }
        return "static/thesisattachment/" + fileName;
	}
	@Override
	public String uploadTeacherPicture(MultipartFile file) {
		// TODO Auto-generated method stub
		String fileName = file.getOriginalFilename();
        fileName = FileTool.renameToUUID(fileName);
        File oldFile = new File(uploadConfig.getUploadPath() + "/teacherpic/", fileName);
        if (oldFile.exists()) {
        	oldFile.delete();
        }
        try {
            FileTool.uploadFiles(file.getBytes(), uploadConfig.getUploadPath() + "/teacherpic/", fileName);
        } catch (Exception e) {
        }
        return "static/teacherpic/" + fileName;
	}
	@Override
	public String uploadStudentPicture(MultipartFile file) {
		// TODO Auto-generated method stub
		String fileName = file.getOriginalFilename();
        fileName = FileTool.renameToUUID(fileName);
        File oldFile = new File(uploadConfig.getUploadPath() + "/studentpic/", fileName);
        if (oldFile.exists()) {
        	oldFile.delete();
        }
        try {
            FileTool.uploadFiles(file.getBytes(), uploadConfig.getUploadPath() + "/studentpic/", fileName);
        } catch (Exception e) {
        }
        return "static/studentpic/" + fileName;
	}
	@Override
	public String uploadAcademicAttachment(MultipartFile file) {
		// TODO Auto-generated method stub
		String fileName = file.getOriginalFilename();
        File oldFile = new File(uploadConfig.getUploadPath() + "/academicattachment/", fileName);
        if (oldFile.exists()) {
        	oldFile.delete();
        }
        try {
            FileTool.uploadFiles(file.getBytes(), uploadConfig.getUploadPath() + "/academicattachment/", fileName);
        } catch (Exception e) {
        }
        return "static/academicattachment/" + fileName;
	}
	@Override
	public String uploadAcademicContentForImage(MultipartFile file) {
		// TODO Auto-generated method stub
		String fileName = file.getOriginalFilename();
        fileName = FileTool.renameToUUID(fileName);
        File oldFile = new File(uploadConfig.getUploadPath() + "/academiccontentforimage/", fileName);
        if (oldFile.exists()) {
        	oldFile.delete();
        }
        try {
            FileTool.uploadFiles(file.getBytes(), uploadConfig.getUploadPath() + "/academiccontentforimage/", fileName);
        } catch (Exception e) {
        }
        return "static/academiccontentforimage/" + fileName;
	}
	@Override
	public String uploadAcademicContentForVideo(MultipartFile file) {
		// TODO Auto-generated method stub
		String fileName = file.getOriginalFilename();
        fileName = FileTool.renameToUUID(fileName);
        File oldFile = new File(uploadConfig.getUploadPath() + "/academiccontentforvideo/", fileName);
        if (oldFile.exists()) {
        	oldFile.delete();
        }
        try {
            FileTool.uploadFiles(file.getBytes(), uploadConfig.getUploadPath() + "/academiccontentforvideo/", fileName);
        } catch (Exception e) {
        }
        return "static/academiccontentforvideo/" + fileName;
	}
}
