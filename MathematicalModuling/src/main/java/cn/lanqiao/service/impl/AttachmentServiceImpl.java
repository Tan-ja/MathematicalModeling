package cn.lanqiao.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.lanqiao.dao.AttachmentDao;
import cn.lanqiao.entity.Attachment;
import cn.lanqiao.service.AttachmentService;
@Service
public class AttachmentServiceImpl implements AttachmentService {
	@Autowired
	private AttachmentDao attachDao;
	@Override
	public boolean addAttachment(Attachment attachment) {
		// TODO Auto-generated method stub
		if (attachment != null) {
			attachDao.addAttachment(attachment);
			return true;
		}
		return false;
	}

	@Override
	public boolean deleteAttachmentByObjid(Integer objid) {
		// TODO Auto-generated method stub
		if (objid != null) {
			attachDao.deleteAttachmentByObjid(objid);
			return true;
		}
		return false;
	}

	@Override
	public boolean updateAttachment(Attachment attachment) {
		// TODO Auto-generated method stub
		if (attachment != null) {
			attachDao.updateAttachment(attachment);
			return true;
		}
		return false;
	}

	@Override
	public List<Attachment> getAllAttachmentByObjid(Integer objid) {
		// TODO Auto-generated method stub
		if (objid != null) {
			return attachDao.getAllAttachmentByObjid(objid);
		}
		return null;
	}

	@Override
	public int checkRepeatAttachment(Attachment attachment) {
		// TODO Auto-generated method stub
		if (attachment != null) {
			return attachDao.checkRepeatAttachment(attachment);
		}
		return 0;
	}

	@Override
	public boolean deleteAttachmentByObjidAndFilename(Integer objid, String filename) {
		// TODO Auto-generated method stub
		if (objid != null && filename != null) {
			attachDao.deleteAttachmentByObjidAndFilename(objid, filename);
		}
		return false;
	}

}
