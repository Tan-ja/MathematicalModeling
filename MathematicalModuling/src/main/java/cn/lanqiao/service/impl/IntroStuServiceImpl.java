package cn.lanqiao.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.lanqiao.dao.IntroStuDao;
import cn.lanqiao.entity.IntroStu;
import cn.lanqiao.service.IntroStuService;
@Service
public class IntroStuServiceImpl implements IntroStuService{
	@Autowired
	private IntroStuDao introStuDao;
	@Override
	public List<IntroStu> getAllIntroStuInfoByUid(Integer sid) {
		// TODO Auto-generated method stub
		if (sid != null) {
			return introStuDao.getAllIntroStuInfoByUid(sid);
		}
		return null;
	}

//	@Override
//	public List<IntroStu> getAllIntroStuInfoByUidAndName(Integer sid, String sname) {
//		// TODO Auto-generated method stub
//		if (sid != null || !"".equals(sname) || sname != null ) {
//			return introStuDao.getAllIntroStuInfoByUidAndName(sid, sname);
//		}
//		return null;
//	}

	@Override
	public boolean updateIntroStuInfo(IntroStu introStu) {
		// TODO Auto-generated method stub
		try {
			if (introStu != null) {
				introStuDao.updateIntroStuInfo(introStu);
			}
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean deleteIntroStuBy(IntroStu introStu) {
		// TODO Auto-generated method stub
		try {
			if (introStu != null) {
				introStuDao.deleteIntroStuBy(introStu);
			}
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean addIntroStu(IntroStu introStu) {
		// TODO Auto-generated method stub
		try {
			if (introStu != null) {
				introStuDao.addIntroStu(introStu);
			}
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean deleteIntroStuById(Integer id) {
		// TODO Auto-generated method stub
		try {
			if (id != null) {
				introStuDao.deleteIntroStuById(id);
				return true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public IntroStu getIntroStuByid(Integer id) {
		// TODO Auto-generated method stub
		try {
			if (id != null) {
				return introStuDao.getIntroStuByid(id);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
