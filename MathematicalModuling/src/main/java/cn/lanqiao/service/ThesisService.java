package cn.lanqiao.service;


import org.apache.ibatis.annotations.Update;

import cn.lanqiao.entity.Thesis;

public interface ThesisService {
	// 添加论文
	boolean addThesis(Thesis thesis);
	// 根据队长编号和竞赛编号查找论文
	Thesis getThesisByTeamidAndMatchid(Integer teamid, Integer matchid);
	// 覆盖已有论文
	boolean updateThesis(Thesis thesis);
}
