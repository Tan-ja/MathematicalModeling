package cn.lanqiao.service;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import cn.lanqiao.entity.MatchInfo;

public interface MatchInfoService {
	// 添加新的赛事
	boolean addNewMatch(MatchInfo matchInfo);
	// 删除旧的赛事(或者已经过时的赛事)
	boolean deleteOldMatch(Integer id);
	// 修改已有赛事
	boolean updateMatch(MatchInfo matchInfo);
	// 查询所有已经发布的赛事
	List<MatchInfo> getAllMatch(String mtitle);
	// 根据id查找某个赛事
	MatchInfo getMatchById(Integer id);
	// 根据日期查找某些赛事
	List<MatchInfo> getAllMatchByMdate(Date mdate);
	// 分页查找赛事
	List<MatchInfo> getAllMatchByPage(int currentPage, int pageSize, String mtitle);
	// 根据某个时间段查找赛事
	List<MatchInfo> getAllMatchByPageAndMdatge(Map<String, Object> map);
}
