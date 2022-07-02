package cn.lanqiao.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.lanqiao.dao.ParticipantDao;
import cn.lanqiao.entity.Participant;
import cn.lanqiao.service.ParticipantService;
@Service
public class ParticipantServiceImpl implements ParticipantService {
	@Autowired
	private ParticipantDao participantDao;
	@Override
	public Participant getParticipantById(Integer id) {
		// TODO Auto-generated method stub
		if (id != null && id > 0) {
			return participantDao.getParticipantById(id);
		}
		return null;
	}

	@Override
	public boolean updateInfoOfParticipant(Participant participant) {
		// TODO Auto-generated method stub
		if (participant != null) {
			participantDao.updateInfoOfParticipant(participant);
			return true;
		}
		return false;
	}

	@Override
	public boolean addNewParticipant(Participant participant) {
		// TODO Auto-generated method stub
		if (participant != null) {
			participantDao.addNewParticipant(participant);
			return true;
		}
		return false;
	}

	@Override
	public boolean deleteParticipantById(Integer id) {
		// TODO Auto-generated method stub
		if (id != null && id > 0) {
			participantDao.deleteParticipantById(id);
			return true;
		}
		return false;
	}

	@Override
	public List<Participant> getAllParticipant() {
		// TODO Auto-generated method stub
		return participantDao.getAllParticipant();
	}

	@Override
	public Participant getParticipantPstunum(String pstunum) {
		// TODO Auto-generated method stub
		if (pstunum != null && !"".equals(pstunum)) {
			return participantDao.getParticipantPstunum(pstunum);
		}
		return null;
	}
}
