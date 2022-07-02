package cn.lanqiao.service;

import java.util.List;

import cn.lanqiao.entity.Participant;

public interface ParticipantService {
	// 根据参赛人id查找参赛人
	Participant getParticipantById(Integer id);
	// 根据参赛人id查找参赛人
	Participant getParticipantPstunum(String pstunum);
	// 修改某个参赛人的信息
	boolean updateInfoOfParticipant(Participant participant);
	// 添加参赛人
	boolean addNewParticipant(Participant participant);
	// 根据id删除参赛人
	boolean deleteParticipantById(Integer id);
	// 获取所有参赛人
	List<Participant> getAllParticipant();
}
