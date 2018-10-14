package com.ros.entity;
/**
 * 鲜花类别的实体类
 * @author Administrator
 *
 */
public class FlowerType {

	private int typeId;//鲜花类型编号
	private String typeName;//鲜花类别名称
	private String createTime;//鲜花类别信息创建时间
	private String updateTime;//鲜花类别信息更新时间
	public int getTypeId() {
		return typeId;
	}
	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}
	@Override
	public String toString() {
		return "FlowerType [typeId=" + typeId + ", typeName=" + typeName + ", createTime=" + createTime
				+ ", updateTime=" + updateTime + "]";
	}
	public FlowerType(int typeId, String typeName, String createTime, String updateTime) {
		super();
		this.typeId = typeId;
		this.typeName = typeName;
		this.createTime = createTime;
		this.updateTime = updateTime;
	}
	
	public FlowerType() {
		// TODO Auto-generated constructor stub
	}
}
