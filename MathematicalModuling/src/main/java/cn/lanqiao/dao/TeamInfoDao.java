package cn.lanqiao.dao;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import cn.lanqiao.entity.TeamInfo;

@Mapper
public interface TeamInfoDao {
	// 添加团队
	void addTeamInfo(TeamInfo teaminfo);
	// 根据队长id删除团队
	void deleteTeamInfoByCaptainId(Integer id);
	// 修改参赛人的相关信息
	void updateStunum(TeamInfo teaminfo);
	// 根据队长id查找相应的队伍
	List<TeamInfo> getTeamInfoByCapid(Integer id);
	// 根据赛事编号查找队伍
	List<TeamInfo> getTeamInfoByCompeid(Integer id);
	// 根据报名时间查找队伍
	List<TeamInfo> getTeamInfoByPdate(Date date);
	// 根据参赛人学号查找队伍
	List<TeamInfo> getTeamInfoByStunum(String stunum);
	// 根据报名时间段查找参赛队伍
	List<TeamInfo> getTeamInfoByPdateWhile(Date start, Date end);
	// 根据赛事编号和队长id查找赛事
	List<TeamInfo> getTeamInfoByMatchIdAndCapId(Integer compeid, Integer capid);
	// 修改某个队伍的当前状态
	void updateTeamCurrentStatusByMatchIdAndCapIdAndCurrentStatus(Integer compeid, Integer capid, int currentstatus);
	// 管理员动态查询队伍审核
	List<TeamInfo> allTeamInfoByAdmin(Map<String, Object> map);
	// 根据赛事编号计算总的报名量
	int getCountOfPerMatch(Integer compeid);
	// 获取参赛人的所有专业
	List<String> getAllPro(Integer compeid);
	// 检查用户是否已经报名参加竞赛
	@Select("select * from teaminfo where stunum=#{stunum} and compeid=#{compeid}")
	TeamInfo checkUserRepeat(String stunum, Integer compeid);
}
