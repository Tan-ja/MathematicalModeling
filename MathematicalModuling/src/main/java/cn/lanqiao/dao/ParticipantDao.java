package cn.lanqiao.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import cn.lanqiao.entity.Participant;
@Mapper
public interface ParticipantDao {
	// 根据参赛人id查找参赛人
	Participant getParticipantById(Integer id);
	// 根据参赛人学号查找参赛人
	Participant getParticipantPstunum(String pstunum);
	// 修改某个参赛人的信息
	void updateInfoOfParticipant(Participant participant);
	// 添加参赛人
	void addNewParticipant(Participant participant);
	// 根据id删除参赛人
	void deleteParticipantById(Integer id);
	// 获取所有参赛人
	List<Participant> getAllParticipant();
}
