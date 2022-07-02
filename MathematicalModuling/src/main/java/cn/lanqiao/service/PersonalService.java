package cn.lanqiao.service;

import org.springframework.web.multipart.MultipartFile;

public interface PersonalService {
	public String fileUpload(MultipartFile file);
	public String fileUploadForMatchAttchment(MultipartFile file, Integer objid);
	public Object userPayForMatch(MultipartFile file);
	public String fileUploadForThesisAttachment(MultipartFile file);
	public String uploadTeacherPicture(MultipartFile file);
	public String uploadStudentPicture(MultipartFile file);
	public String uploadAcademicAttachment(MultipartFile file);
	public String uploadAcademicContentForImage(MultipartFile file);
	public String uploadAcademicContentForVideo(MultipartFile file);
}
