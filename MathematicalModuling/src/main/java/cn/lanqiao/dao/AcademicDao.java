package cn.lanqiao.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import cn.lanqiao.entity.AcademicDynamic;
@Mapper
public interface AcademicDao {
	// 根据种类名称获取学术动态中的相关内容(限制条数)
	public List<AcademicDynamic> getAllAcademicDynamic(String acategory, int currentPage, int pageSize);
	// 根据学术咨询文章的id查找某个咨询信息
	public AcademicDynamic getAcademicDynamicById(int adid);
	// 根据种类名称获取学术动态中的相关内容(没有限制)
	public List<AcademicDynamic> getAllAcademicDynamicNoLimit(String acategory);
	// 每次用户进入相应页面，页面的访问次数添加一次
	public void updateUserNum(Integer adid);
	// 每次用户对当前对象进行评论时，还要修改当前对象的评论数
	public void updateAcomment(Integer adid);
	// 每次用户对当前对象进行点赞时，还要修改当前对象的点赞数
	void updateAconsiderAdd(Integer adid);
	// 每次用户对当前对象进行点赞时，还要修改当前对象的点赞数
	void updateAconsiderRe(Integer adid);
	// 用户进行模糊查询
	List<AcademicDynamic> getAllAcademicDynamicByFuzzyQueryForUserByPage(String key, int currentPage, int pageSize);
	// 用户进行模糊查询
	List<AcademicDynamic> getAllAcademicDynamicByFuzzyQueryForUser(String key);
	// 管理员进行模糊查询
	List<AcademicDynamic> getAllAcademicDynamicByFuzzyQuery(String acategory, int currentPage, int pageSize, String key);
	// 管理员进行模糊查询
	List<AcademicDynamic> getAcademicDynamicByFuzzyQuery(String acategory, String key);
	// 根据adid删除协会的某个信息
	void deleteAcademicDynamicByAdid(int adid);
	// 修改协会的某个信息
	void updateAcademicDynamicInfo(AcademicDynamic academicDynamic);
	// 添加协会的信息
	void addAcademicDynamic(AcademicDynamic academicDynamic);
	// 根据时间，类型，标题查找
	@Select("select * from academicdynamic where acategory=#{acategory} and atitle=#{atitle} and adate=#{adate}")
	AcademicDynamic getAcademicDynamicBySome(AcademicDynamic academicDynamic);
}
