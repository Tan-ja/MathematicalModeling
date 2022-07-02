package cn.lanqiao.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import cn.lanqiao.entity.History;
@Mapper
public interface HistoryDao {
	// 获取所有发展历程
	List<History> getAllHistory();
	// 添加一条发展历程
	void addHistory(History history);
	// 删除一条发展历程
	void deleteHistoryById(Integer id);
	// 动态查询
	List<History> getHistoryWithLimit(History history);
	// 修改某条发展历程
	void modifyHistory(History history);
}
