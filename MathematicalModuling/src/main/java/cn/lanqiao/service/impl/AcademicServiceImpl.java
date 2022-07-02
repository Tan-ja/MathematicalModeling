package cn.lanqiao.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.lanqiao.dao.AcademicDao;
import cn.lanqiao.entity.AcademicDynamic;
import cn.lanqiao.service.AcademicService;
@Service
public class AcademicServiceImpl implements AcademicService {
	@Autowired
	private AcademicDao academic;
	@Override
	public List<AcademicDynamic> getAllAcademicDynamic(String acategory, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		List<AcademicDynamic> academicDynamics = null;
		if (acategory == null || "".equals(acategory)) {
			return academicDynamics;
		}
		academicDynamics = academic.getAllAcademicDynamic(acategory, currentPage, pageSize);
		return academicDynamics;
	}

	@Override
	public AcademicDynamic getAcademicDynamicById(Integer adid) {
		// TODO Auto-generated method stub
		AcademicDynamic academicDynamics = null;
		if (adid == null || "".equals(adid)) {
			return academicDynamics;
		}
		academicDynamics = academic.getAcademicDynamicById(adid);
		return academicDynamics;
	}

	@Override
	public List<AcademicDynamic> getAllAcademicDynamicNoLimit(String acategory) {
		// TODO Auto-generated method stub
		List<AcademicDynamic> academicDynamics = null;
		if (acategory == null || "".equals(acategory)) {
			return academicDynamics;
		}
		academicDynamics = academic.getAllAcademicDynamicNoLimit(acategory);
		return academicDynamics;
	}

	@Override
	public void updateUserNum(Integer adid) {
		// TODO Auto-generated method stub
		if (adid != null) {
			academic.updateUserNum(adid);
		}
	}

	@Override
	public boolean updateAcomment(Integer adid) {
		// TODO Auto-generated method stub
		if (adid != null) {
			academic.updateAcomment(adid);
			return true;
		}
		return false;
	}

	@Override
	public List<AcademicDynamic> getAllAcademicDynamicByFuzzyQuery(String acategory, int currentPage, int pageSize, String key) {
		// TODO Auto-generated method stub
		List<AcademicDynamic> academicDynamics = null;
		if (acategory == null || "".equals(acategory)) {
			return academicDynamics;
		}
		academicDynamics = academic.getAllAcademicDynamicByFuzzyQuery(acategory, currentPage, pageSize, key);
		return academicDynamics;
	}

	@Override
	public List<AcademicDynamic> getAcademicDynamicByFuzzyQuery(String acategory, String key) {
		// TODO Auto-generated method stub
		List<AcademicDynamic> academicDynamics = null;
		if (acategory == null || "".equals(acategory)) {
			return academicDynamics;
		}
		academicDynamics = academic.getAcademicDynamicByFuzzyQuery(acategory, key);
		return academicDynamics;
	}

	@Override
	public boolean deleteAcademicDynamicByAdid(Integer adid) {
		// TODO Auto-generated method stub
		try {
			if (adid != null) {
				academic.deleteAcademicDynamicByAdid(adid);
				return true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean updateAcademicDynamicInfo(AcademicDynamic academicDynamic) {
		// TODO Auto-generated method stub
		try {
			if (academicDynamic != null) {
				academic.updateAcademicDynamicInfo(academicDynamic);
				return true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean addAcademicDynamic(AcademicDynamic academicDynamic) {
		// TODO Auto-generated method stub
		try {
			if (academicDynamic != null) {
				academic.addAcademicDynamic(academicDynamic);
				return true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public List<AcademicDynamic> getAllAcademicDynamicByFuzzyQueryForUserByPage(String key, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		List<AcademicDynamic> academicDynamics = null;
		if (key == null || "".equals(key)) {
			return academicDynamics;
		}
		academicDynamics = academic.getAllAcademicDynamicByFuzzyQueryForUserByPage(key, currentPage, pageSize);
		return academicDynamics;
	}

	@Override
	public List<AcademicDynamic> getAllAcademicDynamicByFuzzyQueryForUser(String key) {
		// TODO Auto-generated method stub
		List<AcademicDynamic> academicDynamics = null;
		if (key == null || "".equals(key)) {
			return academicDynamics;
		}
		academicDynamics = academic.getAllAcademicDynamicByFuzzyQueryForUser(key);
		return academicDynamics;
	}


	@Override
	public boolean updateAconsiderAdd(Integer adid) {
		// TODO Auto-generated method stub
		try {
			if (adid != null) {
				academic.updateAconsiderAdd(adid);
				return true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean updateAconsiderRe(Integer adid) {
		// TODO Auto-generated method stub
		try {
			if (adid != null) {
				academic.updateAconsiderRe(adid);
				return true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public AcademicDynamic getAcademicDynamicBySome(AcademicDynamic academicDynamic) {
		// TODO Auto-generated method stub
		if (academicDynamic != null)
			return academic.getAcademicDynamicBySome(academicDynamic);
		return null;
	}
}
