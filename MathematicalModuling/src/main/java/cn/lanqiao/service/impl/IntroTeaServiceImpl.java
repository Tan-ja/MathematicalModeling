package cn.lanqiao.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.lanqiao.dao.IntroTeaDao;
import cn.lanqiao.entity.IntroTea;
import cn.lanqiao.service.IntroTeaService;
@Service
public class IntroTeaServiceImpl implements IntroTeaService {
	@Autowired
	private IntroTeaDao introTeaDao;
	@Override
	public List<IntroTea> getAllIntroTeaInfoByUid(Integer uid) {
		// TODO Auto-generated method stub
		if (uid != null) {
			return introTeaDao.getAllIntroTeaInfoByUid(uid);
		}
		return null;
	}

//	@Override
//	public List<IntroTea> getAllIntroTeaInfoByUidAndName(Integer uid, String uname) {
//		// TODO Auto-generated method stub
//		if (uid != null || !"".equals(uname) || uname != null ) {
//			return introTeaDao.getAllIntroTeaInfoByUidAndName(uid, uname);
//		}
//		return null;
//	}

	@Override
	public boolean updateIntroTeaInfo(IntroTea introTea) {
		// TODO Auto-generated method stub
		try {
			if (introTea != null) {
				introTeaDao.updateIntroTeaInfo(introTea);
			}
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean deleteIntroTeaBy(IntroTea introTea) {
		// TODO Auto-generated method stub
		try {
			if (introTea != null) {
				introTeaDao.deleteIntroTeaBy(introTea);
			}
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean addIntroTea(IntroTea introTea) {
		// TODO Auto-generated method stub
		try {
			if (introTea != null) {
				introTeaDao.addIntroTea(introTea);
			}
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean deleteIntroTeaById(Integer id) {
		// TODO Auto-generated method stub
		try {
			if (id != null) {
				introTeaDao.deleteIntroTeaById(id);
			}
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public IntroTea getIntroTeaByid(Integer id) {
		// TODO Auto-generated method stub
		try {
			if (id != null) {
				return introTeaDao.getIntroTeaByid(id);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
