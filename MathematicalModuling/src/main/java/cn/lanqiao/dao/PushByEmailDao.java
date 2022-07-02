package cn.lanqiao.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.lanqiao.entity.PushByEmail;

@Mapper
public interface PushByEmailDao {
	@Insert("insert into pushbyemail(userid, uemail) values(#{userid},#{uemail})")
	void addPushByEmail(PushByEmail pushByEmail);
	// 根据用户id删除某条记录
	@Delete("delete from pushbyemail where userid=#{userid}")
	void deleteByUserId(Integer userid);
	// 根据编号id删除某条记录
	@Delete("delete from pushbyemail where id=#{id}")
	void deleeById(Integer id);
	// 根据用户id修改用户信息
	@Update("update pushbyemail set uemail=#{uemail} where userid=#{userid}")
	void updatePushByEmail(PushByEmail pushByEmail);
	// 查找所有记录
	@Select("select * from pushbyemail")
	List<PushByEmail> getAllPushByEmail();
	// 根据用户id查找某条记录
	@Select("select * from pushbyemail where userid=#{userid}")
	PushByEmail getPushByEmailByUserid(Integer userid);
	// 根据编号查找某条记录
	@Select("select * from pushbyemail where id=#{id}")
	PushByEmail getPushByEmailById(Integer id);
}
