package cn.lanqiao.service;

import java.util.List;

import cn.lanqiao.entity.History;

public interface HistoryService {
	// 获取所有发展历程
	List<History> getAllHistory();
	// 添加一条发展历程
	boolean addHistory(History history);
	// 删除一条发展历程
	boolean deleteHistoryById(Integer id);
	// 动态查询
	List<History> getHistoryWithLimit(History history);
	// 修改某条发展历程		
	boolean modifyHistory(History history);
}
