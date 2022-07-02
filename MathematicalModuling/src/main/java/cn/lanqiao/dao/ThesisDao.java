package cn.lanqiao.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.lanqiao.entity.Thesis;

@Mapper
public interface ThesisDao {
	// 添加论文
	@Insert("insert into thesis(thedate,teamid,matchid,thecontent) values(#{thedate},#{teamid},#{matchid},#{thecontent})")
	void addThesis(Thesis thesis);
	// 根据队长编号和竞赛编号查找论文
	@Select("select * from thesis where teamid=#{teamid} and matchid=#{matchid}")
	Thesis getThesisByTeamidAndMatchid(Integer teamid, Integer matchid);
	// 覆盖已有论文
	@Update("update thesis set thedate=#{thedate},teamid=#{teamid},matchid=#{matchid},thecontent=#{thecontent} where id=#{id}")
	void updateThesis(Thesis thesis);
}
