package cn.lanqiao.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.lanqiao.dao.PushByEmailDao;
import cn.lanqiao.entity.PushByEmail;
import cn.lanqiao.service.PushByEmailService;
@Service
public class PushByEmailServiceImpl implements PushByEmailService {
	@Autowired
	private PushByEmailDao pbeDao;
	@Override
	public boolean addPushByEmail(PushByEmail pushByEmail) {
		// TODO Auto-generated method stub
		if (pushByEmail != null) {
			pbeDao.addPushByEmail(pushByEmail);
			return true;
		}
		return false;
	}

	@Override
	public boolean deleteByUserId(Integer userid) {
		// TODO Auto-generated method stub
		if (userid != null) {
			pbeDao.deleteByUserId(userid);;
			return true;
		}
		return false;
	}

	@Override
	public boolean deleeById(Integer id) {
		// TODO Auto-generated method stub
		if (id != null) {
			pbeDao.deleeById(id);;
			return true;
		}
		return false;
	}

	@Override
	public boolean updatePushByEmail(PushByEmail pushByEmail) {
		// TODO Auto-generated method stub
		if (pushByEmail != null) {
			pbeDao.updatePushByEmail(pushByEmail);
			return true;
		}
		return false;
	}

	@Override
	public List<PushByEmail> getAllPushByEmail() {
		// TODO Auto-generated method stub
		return pbeDao.getAllPushByEmail();
	}

	@Override
	public PushByEmail getPushByEmailByUserid(Integer userid) {
		// TODO Auto-generated method stub
		if (userid != null) {
			return pbeDao.getPushByEmailByUserid(userid);
		}
		return null;
	}

	@Override
	public PushByEmail getPushByEmailById(Integer id) {
		// TODO Auto-generated method stub
		if (id != null) {
			return pbeDao.getPushByEmailById(id);
		}
		return null;
	}
}
