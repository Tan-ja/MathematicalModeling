package cn.lanqiao.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.lanqiao.entity.Attachment;

@Mapper
public interface AttachmentDao {
	// 添加附件
	@Insert("insert into attachment(objid, filename, acategory) values(#{objid},#{filename},#{acategory})")
	void addAttachment(Attachment attachment);
	// 删除某个对象的全部附件
	@Delete("delete from attachment where objid=#{objid}")
	void deleteAttachmentByObjid(Integer objid);
	// 删除某个对象的某个附件
	@Delete("delete from attachment where objid=#{objid} and filename=#{filename}")
	void deleteAttachmentByObjidAndFilename(Integer objid, String filename);
	// 修改附件
	@Update("update attachment set objid=#{objid}, attachment=#{attachment}")
	void updateAttachment(Attachment attachment);
	// 根据父对象查找附件
	@Select("select * from attachment where objid=#{objid}")
	List<Attachment> getAllAttachmentByObjid(Integer objid);
	// 检查附件是否重复
	@Select("select count(id) from attachment where objid=#{objid} and filename=#{filename} and acategory=#{acategory}")
	int checkRepeatAttachment(Attachment attachment);
}
