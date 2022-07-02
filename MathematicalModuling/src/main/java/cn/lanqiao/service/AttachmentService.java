package cn.lanqiao.service;

import java.util.List;

import cn.lanqiao.entity.Attachment;

public interface AttachmentService {
	// 添加附件
	boolean addAttachment(Attachment attachment);
	// 删除附件
	boolean deleteAttachmentByObjid(Integer objid);
	// 删除某个对象的某个附件
	boolean deleteAttachmentByObjidAndFilename(Integer objid, String filename);
	// 修改附件
	boolean updateAttachment(Attachment attachment);
	// 根据父对象查找附件
	List<Attachment> getAllAttachmentByObjid(Integer objid);
	// 检查附件是否重复
	int checkRepeatAttachment(Attachment attachment);
}
